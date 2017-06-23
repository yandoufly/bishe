package com.wjw.laboratory.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;

import com.wjw.laboratory.entity.Appointment;
import com.wjw.laboratory.entity.Course;
import com.wjw.laboratory.entity.Coursedetail;
import com.wjw.laboratory.entity.Namelist;
import com.wjw.laboratory.entity.User;
import com.wjw.laboratory.service.AppointmentService;
import com.wjw.laboratory.service.CourseService;
import com.wjw.laboratory.service.CoursedetailService;
import com.wjw.laboratory.service.NamelistService;
import com.wjw.laboratory.util.ExcelUtil;
import com.wjw.laboratory.util.QueryHelper;

public class CourseAction extends BaseAction {
	@Resource
	private CourseService courseService;
	private Course course;
	
	private File upload;
	private String uploadContextType; 
	private String uploadFileName;
	
	private File userExcel;
	private String userExcelContentType;
	private String userExcelFileName;

	// 列表页面
	public String listUI() throws Exception {
		QueryHelper queryHelper = new QueryHelper(Course.class, "c");
		try {
			if (course != null) {
				if (StringUtils.isNotBlank(course.getName())) {
					course.setName(URLDecoder.decode(course.getName(), "utf-8"));
					queryHelper.addCondition("c.name like ?", "%" + course.getName() + "%");
				}

			}
			pageResult = courseService.getPageResult(queryHelper, getPageNo(), getPageSize());
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}

		return "listUI";

	}

	//跳转到新增页面
	public String addUI(){
		return "addUI";
	}
	//保存新增
	public String add() throws Exception{
		if(course != null){
			System.out.println(course);
			courseService.save(course);
		}
		return "list";
	}
	//跳转到编辑页面
	public String editUI(){
		if (course != null && course.getCourseId() != null) {
			course = courseService.findObjectById(course.getCourseId());
		}
		return "editUI";
	}
	
	//保存编辑
	public String edit() throws Exception{
		if(course != null){
			courseService.update(course);
		}
		return "list";
	}
	//删除
	public String delete(){
		if(course != null && course.getCourseId() != null){
			courseService.delete(course.getCourseId());
		}
		return "list";
	}
	//批量删除
	public String deleteSelected(){
		if(selectedRow != null){
			for(int id: selectedRow){
				System.out.println("delete id:" + id);
				courseService.delete(id);
			}
		}
		return "list";
	}
	
	
	@Resource
	private NamelistService namelistService;
	private Namelist namelist;
	//查看选课学生名单
	public String lookNamelist() throws Exception{
		if(course != null && course.getCourseId() != null){
			course = courseService.findObjectById(course.getCourseId()); //得到课程
			QueryHelper queryHelper = new QueryHelper(Namelist.class, "n");
			try {
				queryHelper.addCondition("n.courseId=?", course.getCourseId());
				pageResult = namelistService.getPageResult(queryHelper, getPageNo(), getPageSize());
			} catch (Exception e) {
				throw new Exception(e.getMessage());
			}
		}
		return "namelistUI";
	}
	
	//导出人员名单
	public void exportExcelBycourseId() throws Exception{
		if(course != null && course.getCourseId() != null){
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("application/x-execl");
			response.setHeader("Content-Disposition", "attachment;filename=" + new String("用户列表.xls".getBytes(), "ISO-8859-1"));
			ServletOutputStream outputStream = response.getOutputStream();
			List<Object> parameters = new ArrayList<Object>();
			parameters.add(course.getCourseId());
			List<Namelist> list = namelistService.findObjects("from Namelist n where n.courseId=?", parameters );
			ExcelUtil.exportNamelistExcel(list, outputStream);
		}
	}
	
	//录入成绩
	public String importExcel(){
		System.out.println("ccdcdcdcdc");
		//1、获取excel文件
		if(userExcel != null){
			System.out.println("userExcelFileName:" + userExcelFileName);
			//是否是excel
			if(userExcelFileName.matches("^.+\\.(?i)((xls)|(xlsx))$")){
				//2、导入
				namelistService.importExcel(userExcel, userExcelFileName);
			}
		}
		return "mainFrame";
	}
	
	
	
	@Resource
	private CoursedetailService coursedetailService;
	private Coursedetail coursedetail;
	
	@Resource
	private AppointmentService appointmentService;
	private Appointment appointment;
	
	//查看课程具体实验列表
	public String lookCoursedetailList() throws Exception{
		if(course != null && course.getCourseId() != null){
			course = courseService.findObjectById(course.getCourseId()); //得到课程
			QueryHelper queryHelper = new QueryHelper(Coursedetail.class, "c");
			try {
				queryHelper.addCondition("c.courseId=?", course.getCourseId());
				pageResult = courseService.getPageResult(queryHelper, getPageNo(), getPageSize());
			} catch (Exception e) {
				throw new Exception(e.getMessage());
			}
		}
		return "coursedetailUI";
	}
	
	//查看课程实验
	public String lookCoursedetail(){
		System.out.println(coursedetail);
		if(!(coursedetail==null || coursedetail.getId()==null)){
			coursedetail = coursedetailService.findObjectById(coursedetail.getId());
			List<Appointment> objects = appointmentService.findObjects("from Appointment a where a.courseId=" + (course.getCourseId()+""), null);
			if(objects != null && objects.size() > 0) {
				appointment = objects.get(0);
				ServletActionContext.getRequest().setAttribute("appointment", appointment);
			}
		}
		return "showCoursedetail";
	}
	
	//添加课程具体实验1
	public String addCoursedetailPage() throws IOException{
		System.out.println(course);
		course = courseService.findObjectById(course.getCourseId()); //得到课程
		List<Appointment> objects = appointmentService.findObjects("from Appointment a where a.courseId=" + (course.getCourseId()+""), null);
		if(objects == null || objects.size() < 1) {
			ServletActionContext.getRequest().setAttribute("msg", "对不起，你还没有预约实验成功");
			return "error";
		}else{
			appointment = objects.get(0);
			ServletActionContext.getRequest().setAttribute("appointment", appointment);
		}
		return "addCoursedetail";
	}
	
	//添加课程具体实验2
	public String addCoursedetail() throws Exception{
		if(coursedetail != null){
			//文件保存
			String path = "D:\\LaboratoryManager\\course\\" + coursedetail.getCourseName();
			File file = new File(path);  
			if (!file.exists()) {  
	            file.mkdirs();  
	        }
			if(upload != null) {
				FileUtils.copyFile(upload, new File(file, uploadFileName));
				coursedetail.setFilename(uploadFileName);
				coursedetail.setFilepath(path);
			}
			
			coursedetailService.save(coursedetail);
			course = new Course();
			course.setCourseId(coursedetail.getCourseId());
		}
		return lookCoursedetailList();
	}
	
	//编辑课程具体实验
	public String editCoursedetail() throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		if(coursedetail != null) {
			System.out.println(coursedetail);
			coursedetailService.update(coursedetail);
			response.getWriter().println("修改成功");
		}else {
			response.getWriter().println("修改失败");
		}
		return null;
	}
	
	//删除课程具体实验
	public String deleteCoursedetail() throws Exception {
		if(coursedetail != null && coursedetail.getId() != null) {
			coursedetailService.delete(coursedetail.getId());
		}
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().println("删除成功");
		return lookCoursedetailList();
	}
	
	// 2.下载机制
	public InputStream getDownloadFile() throws Exception {
		coursedetail = coursedetailService.findObjectById(coursedetail.getId());
		System.out.println(coursedetail);
		// 如果下载文件名为中文，进行字符编码转换
		InputStream inputStream = new FileInputStream(coursedetail.getFilepath() + "\\" + coursedetail.getFilename());
		return inputStream;
	}
	//3. 下载文件名显示
	public String getDownFileName(){
		String str = "";
		try {
			str = URLEncoder.encode(coursedetail.getFilename(), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return str;
	}
	// 1.下载
	public String downloadFile() throws Exception {
		System.out.println(coursedetail);
		return "download";
	}
	
	//学生选课（未修改：查询该“学生”'没有选'的实验课记录）
	public String courseChoosePage() throws Exception{
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		List courseIdList = null;
		if(user != null && user.getId() != null){
			String hql = "select courseId from Namelist n where n.studentAccount=?";
			List<Object> parameters = new ArrayList<Object>();
			parameters.add(user.getAccount());
			courseIdList = namelistService.findObjects(hql, parameters);
		}
		if(courseIdList != null && courseIdList.size() > 0){ //已选过课
			String inStr = "";
			for(Object i : courseIdList){
				inStr += "?,";
			}
			inStr = inStr.substring(0, inStr.length()-1);
			String hql = "from Course c where c.courseId not in("+inStr+")";
			System.out.println("hql:" + hql);
			List<Course> courseList = courseService.findObjects(hql, courseIdList);
			ServletActionContext.getRequest().setAttribute("courseList", courseList);
		}else{ //没有选过课
			List<Course> courseList = courseService.findObjects();
			ServletActionContext.getRequest().setAttribute("courseList", courseList);
		}
		return "courseChoose";
	}
	
	//学生选课
	public String courseChoose() throws Exception{
		Course course2 = courseService.findObjectById(course.getCourseId());
		namelist.setCourseId(course2.getCourseId());
		namelist.setCourseName(course2.getName());
		System.out.println(namelist);
		namelistService.save(namelist);
		course2.setNumber(course2.getNumber()+1); //报名人数+1
		courseService.update(course2);
		return courseChoosePage();
	}
	
	//学生的已选课程
	public String courseHasPage(){
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		List courseIdList = null;
		if(user != null && user.getId() != null){
			String hql = "select courseId from Namelist n where n.studentAccount=?";
			List<Object> parameters = new ArrayList<Object>();
			parameters.add(user.getAccount());
			courseIdList = namelistService.findObjects(hql, parameters);
		}
		if(courseIdList != null && courseIdList.size() > 0){ //已选过课
			String inStr = "";
			for(Object i : courseIdList){
				inStr += "?,";
			}
			inStr = inStr.substring(0, inStr.length()-1);
			String hql = "from Course c where c.courseId in("+inStr+")";
			System.out.println("hql:" + hql);
			List<Course> courseList = courseService.findObjects(hql, courseIdList);
			ServletActionContext.getRequest().setAttribute("courseList", courseList);
		}
		return "courseHas";
	}
	
	//学生查看成绩
	public String scoreQuery() {
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		String hql = "from Namelist n where n.studentAccount=?";
		List<Object> parameters = new ArrayList<Object>();
		parameters.add(user.getAccount());
		List<Namelist> findObjects = namelistService.findObjects(hql, parameters);
		ServletActionContext.getRequest().setAttribute("namelistList", findObjects);
		return "mysoreQuery";
	}
	
	
	public void setCourse(Course course) {
		this.course = course;
	}
	public Course getCourse() {
		return course;
	}
	public Namelist getNamelist() {
		return namelist;
	}
	public void setNamelist(Namelist namelist) {
		this.namelist = namelist;
	}
	public Coursedetail getCoursedetail() {
		return coursedetail;
	}
	public void setCoursedetail(Coursedetail coursedetail) {
		this.coursedetail = coursedetail;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadContextType() {
		return uploadContextType;
	}
	public void setUploadContextType(String uploadContextType) {
		this.uploadContextType = uploadContextType;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public File getUserExcel() {
		return userExcel;
	}
	public void setUserExcel(File userExcel) {
		this.userExcel = userExcel;
	}
	public String getUserExcelContentType() {
		return userExcelContentType;
	}
	public void setUserExcelContentType(String userExcelContentType) {
		this.userExcelContentType = userExcelContentType;
	}
	public String getUserExcelFileName() {
		return userExcelFileName;
	}
	public void setUserExcelFileName(String userExcelFileName) {
		this.userExcelFileName = userExcelFileName;
	}
}
