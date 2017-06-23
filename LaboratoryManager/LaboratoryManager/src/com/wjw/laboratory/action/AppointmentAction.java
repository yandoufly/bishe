package com.wjw.laboratory.action;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wjw.laboratory.entity.Appointment;
import com.wjw.laboratory.entity.Classroom;
import com.wjw.laboratory.entity.Course;
import com.wjw.laboratory.entity.User;
import com.wjw.laboratory.service.AppointmentService;
import com.wjw.laboratory.service.ClassroomService;
import com.wjw.laboratory.service.CourseService;
import com.wjw.laboratory.util.ExcelUtil;
import com.wjw.laboratory.util.QueryHelper;

public class AppointmentAction extends BaseAction {
	@Resource
	private AppointmentService appointmentService;
	
	@Resource
	private ClassroomService classroomService;
	@Resource
	private CourseService courseService;
	
	private Appointment appointment;
	
	private InputStream inputStream;
	

	// 列表页面
	public String listUI() throws Exception {
		QueryHelper queryHelper = new QueryHelper(Appointment.class, "a");
		try {
			if (appointment != null) {
				System.out.println(appointment);
				//1.按教室编号查询
				if(StringUtils.isNotBlank(appointment.getClassroomId())){
					appointment.setClassroomId(URLDecoder.decode(appointment.getClassroomId(), "utf-8"));
					queryHelper.addCondition("a.classroomId=?", appointment.getClassroomId());
				}
				//2.按星期几查询
				if(appointment.getWhatday() != 0){
					queryHelper.addCondition("a.whatday=?", appointment.getWhatday());
				}
				//3.按第几节查询
				if(appointment.getPart() != 0){
					queryHelper.addCondition("a.part=?", appointment.getPart());
				}
				
			}
			pageResult = appointmentService.getPageResult(queryHelper, getPageNo(), getPageSize());
			List<Classroom> classroomList = classroomService.findObjects();
			ServletActionContext.getRequest().setAttribute("classroomList", classroomList);
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}
		
		return "listUI";

	}

	//激活
	public String activated() throws Exception{
		if(appointment != null && appointment.getId() != null){
			Appointment appointment2 = appointmentService.findObjectById(appointment.getId());
			appointment2.setState(true);
			appointmentService.update(appointment2);
			
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8")); //回送消息
		}
		return "ajax-activated";
		
	}
	
	//删除
	public String delete(){
		if(appointment != null && appointment.getId() != null){
			appointmentService.delete(appointment.getId());
		}
		return "list";
	}
	//批量删除
	public String deleteSelected(){
		if(selectedRow != null){
			for(int id: selectedRow){
				System.out.println("delete id:" + id);
				appointmentService.delete(id);
			}
		}
		return "list";
	}
	
	//预约实验室页面
	public String takeAppointmentPage(){
		List<Classroom> classroomList = classroomService.findObjects();
		ServletActionContext.getRequest().setAttribute("classroomList", classroomList);

		String hql = "from Course where teacherId=?";
		List<Object> parameters = new ArrayList<Object>();
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		parameters.add(user.getAccount());
		List<Course> courseList = courseService.findObjects(hql, parameters);
//		for(Course c : courseList){
//			System.out.println(c);
//		}
		ServletActionContext.getRequest().setAttribute("courseList", courseList);
		
		return "takeAppointmentPage";
	}
	
	//预约实验室
	public String takeAppointment(){
//		[id=null, courseId=1, courseName=null, teacher=teacher, classroomId=05404, personcount=0, startWeek=3, endWeek=0, whatday=3, part=0, state=false]
//		courseId courseName teacher classroomId personcount
		
		Course course = courseService.findObjectById(Integer.parseInt(appointment.getCourseId()));
		appointment.setCourseName(course.getName());
		appointment.setPersoncount(course.getNumber());
		System.out.println("takeAppointment:" + appointment);
		appointmentService.save(appointment);
		return "mainFrame";
	}
	
	public void getAllAppointment() throws IOException{
		QueryHelper queryHelper = new QueryHelper(Appointment.class, "a");
		if(appointment != null){
			System.out.println(appointment);
			//1.按教室编号查询
			if(StringUtils.isNotBlank(appointment.getClassroomId())){
				queryHelper.addCondition("a.classroomId=?", appointment.getClassroomId());
			}
			//2.按星期几查询
			if(appointment.getWhatday() != 0){
				queryHelper.addCondition("a.whatday=?", appointment.getWhatday());
			}
			//3.按第几节查询
			if(appointment.getPart() != 0){
				queryHelper.addCondition("a.part=?", appointment.getPart());
			}
			queryHelper.addCondition("a.state=?", true);
		}
		List<Appointment> appointmentList = appointmentService.findObjects(queryHelper);
		ObjectMapper mapper = new ObjectMapper();
		String result = mapper.writeValueAsString(appointmentList);
		System.out.println(result);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/javascript");
		response.setCharacterEncoding("utf-8");

		response.getWriter().print(result);
	}
	
	//导出实验室已预约名单
	public void exportExcel() throws IOException {
		String hql = "from Appointment a where a.state=? order by a.classroomId asc, a.whatday asc, a.part asc";
		List<Object> parameters = new ArrayList<Object>();
		parameters.add(true);
		List<Appointment> appointmentList = appointmentService.findObjects(hql, parameters );
		if(appointmentList != null) {
			System.out.println(appointmentList.size());
		}
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/x-execl");
		response.setHeader("Content-Disposition", "attachment;filename=" + new String("实验室预约名单.xls".getBytes(), "ISO-8859-1"));
		ServletOutputStream outputStream = response.getOutputStream();
		ExcelUtil.exportAppointmentExcel(appointmentList, outputStream);
	}
	
	public void setAppointment(Appointment appointment) {
		this.appointment = appointment;
	}
	public Appointment getAppointment() {
		return appointment;
	}

	public InputStream getInputStream() {
		return inputStream;
	}
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
}
