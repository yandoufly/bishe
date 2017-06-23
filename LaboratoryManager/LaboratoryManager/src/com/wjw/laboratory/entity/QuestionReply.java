package com.wjw.laboratory.entity;

import java.util.Date;

public class QuestionReply {
	private Integer id; // 主键',
	private String questionId; // 问题编号',
	private String replyContent; // 回复内容',
	private String replyId; // 回复人编号',
	private String replyName; // 回复人姓名',
	private Date replyTime; // 回复时间'
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getQuestionId() {
		return questionId;
	}
	public void setQuestionId(String questionId) {
		this.questionId = questionId;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getReplyId() {
		return replyId;
	}
	public void setReplyId(String replyId) {
		this.replyId = replyId;
	}
	public String getReplyName() {
		return replyName;
	}
	public void setReplyName(String replyName) {
		this.replyName = replyName;
	}
	public Date getReplyTime() {
		return replyTime;
	}
	public void setReplyTime(Date replyTime) {
		this.replyTime = replyTime;
	}
	@Override
	public String toString() {
		return "QuestionReply [id=" + id + ", questionId=" + questionId + ", replyContent=" + replyContent
				+ ", replyId=" + replyId + ", replyName=" + replyName + ", replyTime=" + replyTime + "]";
	}
}
