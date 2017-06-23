package com.wjw.laboratory.entity;

public class Appointment {
	private Integer id;
	private String courseId; //课程编号
	private String courseName; //实验名称
	private String teacher; //实验教师
	private String classroomId; //实验地点
	private int personcount; //实验人数
	private int startWeek; //开始周 1~20
	private int endWeek; //结束周 1~20
	private int whatday; //星期几 1~7
	private int part; //第几节课 1~6
	private boolean state; //状态： 0-未生效 1-已生效
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCourseId() {
		return courseId;
	}
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getClassroomId() {
		return classroomId;
	}
	public void setClassroomId(String classroomId) {
		this.classroomId = classroomId;
	}
	public int getPersoncount() {
		return personcount;
	}
	public void setPersoncount(int personcount) {
		this.personcount = personcount;
	}
	public int getStartWeek() {
		return startWeek;
	}
	public void setStartWeek(int startWeek) {
		this.startWeek = startWeek;
	}
	public int getEndWeek() {
		return endWeek;
	}
	public void setEndWeek(int endWeek) {
		this.endWeek = endWeek;
	}
	public int getWhatday() {
		return whatday;
	}
	public void setWhatday(int whatday) {
		this.whatday = whatday;
	}
	public int getPart() {
		return part;
	}
	public void setPart(int part) {
		this.part = part;
	}
	public boolean getState() {
		return state;
	}
	public void setState(boolean state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Appointment [id=" + id + ", courseId=" + courseId + ", courseName=" + courseName + ", teacher="
				+ teacher + ", classroomId=" + classroomId + ", personcount=" + personcount + ", startWeek=" + startWeek
				+ ", endWeek=" + endWeek + ", whatday=" + whatday + ", part=" + part + ", state=" + state + "]";
	}
}
