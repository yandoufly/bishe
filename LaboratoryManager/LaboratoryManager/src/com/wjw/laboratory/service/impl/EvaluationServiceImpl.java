package com.wjw.laboratory.service.impl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjw.laboratory.dao.CourseDao;
import com.wjw.laboratory.dao.EvaluationDao;
import com.wjw.laboratory.entity.Evaluation;
import com.wjw.laboratory.service.EvaluationService;

@Service("evaluationService")
public class EvaluationServiceImpl extends BaseServiceImpl<Evaluation> implements EvaluationService {
	
	private EvaluationDao evaluationDao;
	
	@Resource 
	public void setEvaluationDao(EvaluationDao evaluationDao) {
		super.setBaseDao(evaluationDao);
		this.evaluationDao = evaluationDao;
	}
}
