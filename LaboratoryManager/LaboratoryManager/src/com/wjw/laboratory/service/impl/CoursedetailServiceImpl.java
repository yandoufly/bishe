package com.wjw.laboratory.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wjw.laboratory.dao.CoursedetailDao;
import com.wjw.laboratory.entity.Coursedetail;
import com.wjw.laboratory.service.CoursedetailService;

@Service("coursedetailService")
public class CoursedetailServiceImpl extends BaseServiceImpl<Coursedetail> implements CoursedetailService {
	
	private CoursedetailDao coursedetailDao;
	
	@Resource 
	public void setCoursedetailDao(CoursedetailDao coursedetailDao) {
		super.setBaseDao(coursedetailDao);
		this.coursedetailDao = coursedetailDao;
	}
}
