package com.wjw.laboratory.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wjw.laboratory.dao.CourseDao;
import com.wjw.laboratory.entity.Course;
import com.wjw.laboratory.service.CourseService;

@Service("courseService")
public class CourseServiceImpl extends BaseServiceImpl<Course> implements CourseService {
	
	private CourseDao courseDao;
	
	@Resource 
	public void setCourseDao(CourseDao courseDao) {
		super.setBaseDao(courseDao);
		this.courseDao = courseDao;
	}
}
