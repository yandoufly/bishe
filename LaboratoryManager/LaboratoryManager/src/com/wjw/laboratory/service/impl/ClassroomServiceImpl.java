package com.wjw.laboratory.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wjw.laboratory.dao.ClassroomDao;
import com.wjw.laboratory.entity.Classroom;
import com.wjw.laboratory.service.ClassroomService;

@Service("classroomService")
public class ClassroomServiceImpl extends BaseServiceImpl<Classroom> implements ClassroomService {
	
	private ClassroomDao classroomDao;
	
	@Resource 
	public void setClassroomDao(ClassroomDao classroomDao) {
		super.setBaseDao(classroomDao);
		this.classroomDao = classroomDao;
	}
}
