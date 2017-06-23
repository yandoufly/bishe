package com.wjw.laboratory.entity;

public class Classroom {
	private String classroomId; //实验室编号
	private String name; //实验室名称
	private String type; //实验室类型:电脑室、硬件室...
	private int capacity; //容纳人数
	
	public String getClassroomId() {
		return classroomId;
	}
	public void setClassroomId(String classroomId) {
		this.classroomId = classroomId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	@Override
	public String toString() {
		return "Classroom [classroomId=" + classroomId + ", name=" + name + ", type=" + type + ", capacity=" + capacity
				+ "]";
	}
}
