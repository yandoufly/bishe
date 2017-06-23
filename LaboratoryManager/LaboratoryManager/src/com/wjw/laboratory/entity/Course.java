package com.wjw.laboratory.entity;

public class Course {
	private Integer courseId;  // '课程编号',
	private String name; // '课程名称',
	private String teacherId; // '教师编号',
	private String teacherName; // '教师名字',
	private String type; // '课程类型',
	private int number; // '选课人数',
	private String description; // '课程描述'
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "Course [courseId=" + courseId + ", name=" + name + ", teacherId=" + teacherId + ", teacherName="
				+ teacherName + ", type=" + type + ", number=" + number + ", description=" + description + "]";
	}
}
