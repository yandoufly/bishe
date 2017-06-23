package com.wjw.laboratory.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wjw.laboratory.dao.QuestionDao;
import com.wjw.laboratory.entity.Question;
import com.wjw.laboratory.service.QuestionService;

@Service("questionService")
public class QuestionServiceImpl extends BaseServiceImpl<Question> implements QuestionService {
	
	private QuestionDao questionDao;
	
	@Resource 
	public void setQuestionDao(QuestionDao questionDao) {
		super.setBaseDao(questionDao);
		this.questionDao = questionDao;
	}
}
