package com.wjw.laboratory.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.wjw.laboratory.entity.Course;
import com.wjw.laboratory.entity.Evaluation;
import com.wjw.laboratory.entity.User;
import com.wjw.laboratory.service.CourseService;
import com.wjw.laboratory.service.EvaluationService;

import net.sf.json.JSONArray;

public class EvaluationAction extends BaseAction {
	@Resource
	private EvaluationService evaluationService;
	private Evaluation evaluation;

	@Resource
	private CourseService courseService;
	
	//教师查看个人评教
	public void findEvaluation() throws IOException {
		System.out.println("ccccccccccccc");
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		String hql = "from Course c where c.teacherId=?";
		List<Object> parameters = new ArrayList<Object>();
		parameters.add(user.getAccount());
		List<Course> list = courseService.findObjects(hql, parameters);
		int[] answer1 = new int[3];
		int[] answer2 = new int[3];
		int[] answer3 = new int[3];
		int[] answer4 = new int[3];
		int[] answer5 = new int[3];
		int[] answer6 = new int[3];
		System.out.println(list.size());
		if(list != null && list.size() > 0) {
			for(Course course : list) {
				hql = "from Evaluation e where e.courseId=?";
				parameters = new ArrayList<Object>();
				String courseId = String.valueOf(course.getCourseId());
				parameters.add(courseId);
				List<Evaluation> findObjects = evaluationService.findObjects(hql, parameters);
				for(Evaluation e : findObjects) {
					System.out.println("ccccdcdfdfdf");
					if(e.getAnswer1().equals("A")) {
						answer1[0] ++;
					}else if(e.getAnswer1().equals("B")) {
						answer1[1] ++;
					} else {
						answer1[2] ++;
					}
					
					if(e.getAnswer2().equals("A")) {
						answer2[0] ++;
					}else if(e.getAnswer2().equals("B")) {
						answer2[1] ++;
					} else {
						answer2[2] ++;
					}

					if(e.getAnswer3().equals("A")) {
						answer3[0] ++;
					}else if(e.getAnswer3().equals("B")) {
						answer3[1] ++;
					} else {
						answer3[2] ++;
					}

					if(e.getAnswer4().equals("A")) {
						answer4[0] ++;
					}else if(e.getAnswer4().equals("B")) {
						answer4[1] ++;
					} else {
						answer4[2] ++;
					}

					if(e.getAnswer5().equals("A")) {
						answer5[0] ++;
					}else if(e.getAnswer5().equals("B")) {
						answer5[1] ++;
					} else {
						answer5[2] ++;
					}

					if(e.getAnswer6().equals("A")) {
						answer6[0] ++;
					}else if(e.getAnswer6().equals("B")) {
						answer6[1] ++;
					} else {
						answer6[2] ++;
					}
				}
			}
		}
		System.out.println(Arrays.toString(answer1));
		System.out.println(Arrays.toString(answer2));
		System.out.println(Arrays.toString(answer3));
		System.out.println(Arrays.toString(answer4));
		System.out.println(Arrays.toString(answer5));
		System.out.println(Arrays.toString(answer6));
		JSONArray jsonArray = new JSONArray();
		jsonArray.add(answer1);
		jsonArray.add(answer2);
		jsonArray.add(answer3);
		jsonArray.add(answer4);
		jsonArray.add(answer5);
		jsonArray.add(answer6);
		System.out.println(jsonArray.toString());
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setHeader("content-type", "text/html;charset=UTF-8");
		response.getWriter().write(jsonArray.toString());
	}
	
	//学生评教
	public void addEvaluation() throws IOException{
		HttpServletRequest request = ServletActionContext.getRequest();
		String courseId = request.getParameter("courseId");
		String answer1 = request.getParameter("answer1");
		String answer2 = request.getParameter("answer2");
		String answer3 = request.getParameter("answer3");
		String answer4 = request.getParameter("answer4");
		String answer5 = request.getParameter("answer5");
		String answer6 = request.getParameter("answer6");
		String suggestion = request.getParameter("suggestion");
		
		User user = (User) request.getSession().getAttribute("user");
		evaluation = new Evaluation();
		evaluation.setCourseId(courseId);
		evaluation.setStudentId(user.getAccount());
		evaluation.setAnswer1(answer1);
		evaluation.setAnswer2(answer2);
		evaluation.setAnswer3(answer3);
		evaluation.setAnswer4(answer4);
		evaluation.setAnswer5(answer5);
		evaluation.setAnswer6(answer6);
		evaluation.setSuggestion(suggestion);
		System.out.println(evaluation);
		evaluationService.save(evaluation);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setHeader("content-type", "text/html;charset=UTF-8");
		response.getWriter().write("操作成功！<a href='/LaboratoryManager/student/welcome.jsp'>返回主界面</a>");
	}
}
