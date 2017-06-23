package com.wjw.laboratory.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wjw.laboratory.dao.QuestionReplyDao;
import com.wjw.laboratory.entity.QuestionReply;
import com.wjw.laboratory.service.QuestionReplyService;

@Service("questionReplyService")
public class QuestionReplyServiceImpl extends BaseServiceImpl<QuestionReply> implements QuestionReplyService {
	
	private QuestionReplyDao questionReplyDao;
	@Resource 
	public void setQuestionReplyDao(QuestionReplyDao questionReplyDao) {
		super.setBaseDao(questionReplyDao);
		this.questionReplyDao = questionReplyDao;
	}
}
