package com.wjw.laboratory.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import com.wjw.laboratory.entity.Question;
import com.wjw.laboratory.entity.QuestionReply;
import com.wjw.laboratory.service.QuestionReplyService;
import com.wjw.laboratory.service.QuestionService;

public class QuestionAction extends BaseAction {
	@Resource
	private QuestionService questionService;
	private Question question;
	@Resource
	private QuestionReplyService questionReplyService;
	private QuestionReply questionReply;
	
	public String questionList(){
		String hql = "from Question q order by createTime desc";
		List<Question> list = questionService.findObjects(hql, null);
		ServletActionContext.getRequest().setAttribute("questList", list);
		return "questionList";
	}
	
	public String addQuestion(){
		System.out.println(question);
		question.setCreateTime(new Date());
		questionService.save(question);
		return "list";
	}
	
	public String showQuestion(){
		System.out.println(question);
		if(question != null && question.getId() != null){
			question = questionService.findObjectById(question.getId());
			String hql = "from QuestionReply qr where qr.questionId=?";
			List<Object> parameters = new ArrayList<Object>();
			parameters.add(question.getId() + "");
			List<QuestionReply> questionReplyList = questionReplyService.findObjects(hql, parameters);

			ServletActionContext.getRequest().setAttribute("question", question);
			ServletActionContext.getRequest().setAttribute("questionReplyList", questionReplyList);
		}
		return "showQuestion";
	}
	
	public String addQuestionReply(){
		System.out.println(questionReply);
		questionReply.setReplyTime(new Date());
		questionReplyService.save(questionReply);
		question = new Question();
		question.setId(Integer.parseInt(questionReply.getQuestionId()));
		return showQuestion();
	}
	
	
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	public QuestionReply getQuestionReply() {
		return questionReply;
	}
	public void setQuestionReply(QuestionReply questionReply) {
		this.questionReply = questionReply;
	}
}
