package com.wjw.laboratory.entity;

public class Coursedetail {
	private Integer id; // '主键',
	private int courseId; // '课程编号',
	private String courseName; // '课程编号',
	private String title; // '实验题目',
	private String content; // '实验内容',
	private int experimentTime; //实验时间
	private String filename; // '附件名称',
	private String filepath; // '附件路径'
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
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
	public void setExperimentTime(int experimentTime) {
		this.experimentTime = experimentTime;
	}
	public int getExperimentTime() {
		return experimentTime;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	@Override
	public String toString() {
		return "Coursedetail [id=" + id + ", courseId=" + courseId + ", courseName=" + courseName + ", title=" + title
				+ ", content=" + content + ", experimentTime=" + experimentTime + ", filename=" + filename
				+ ", filepath=" + filepath + "]";
	}
}
