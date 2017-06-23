package com.wjw.laboratory.entity;

public class Namelist {
	private Integer id; // 主键
	private int courseId; // 课程编号
	private String courseName; // 课程名称
	private String studentAccount; // 学生学号
	private String studentName; // 学生姓名
	private boolean sex; // 学生性别
	private String specialty; // 学生专业
	private String examGrade; // 考试成绩
	private String totalGrade; // 总评
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
	public String getStudentAccount() {
		return studentAccount;
	}
	public void setStudentAccount(String studentAccount) {
		this.studentAccount = studentAccount;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public boolean getSex() {
		return sex;
	}
	public void setSex(boolean sex) {
		this.sex = sex;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String getExamGrade() {
		return examGrade;
	}
	public void setExamGrade(String examGrade) {
		this.examGrade = examGrade;
	}
	public String getTotalGrade() {
		return totalGrade;
	}
	public void setTotalGrade(String totalGrade) {
		this.totalGrade = totalGrade;
	}
	@Override
	public String toString() {
		return "Namelist [id=" + id + ", courseId=" + courseId + ", courseName=" + courseName + ", studentAccount="
				+ studentAccount + ", studentName=" + studentName + ", sex=" + sex + ", specialty=" + specialty
				+ ", examGrade=" + examGrade + ", totalGrade=" + totalGrade + "]";
	}
}
