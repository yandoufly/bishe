package com.wjw.laboratory.entity;

import java.util.Date;

public class Question {
	private Integer id; // 主键',
	private String title; //题目
	private String content; // 问题内容',
	private String studentId; // 学生学号',
	private String studentName; // 学生姓名'，
	private Date createTime; // 创建时间'
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	@Override
	public String toString() {
		return "Question [id=" + id + ", title=" + title + ", content=" + content + ", studentId=" + studentId + ", studentName="
				+ studentName + ", createTime=" + createTime + "]";
	}
}
