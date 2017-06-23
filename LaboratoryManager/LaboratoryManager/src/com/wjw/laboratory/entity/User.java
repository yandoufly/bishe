package com.wjw.laboratory.entity;

public class User {
	private Integer id; //主键
	private String account; //'账号',
	private String password; //'密码',
	private String name; //'姓名',
	private String idnumber; //'身份证号码',
	private boolean sex; //'性别 0 1',
	private String profession; //'职称',
	private String specialty; //'专业',
	private String birthday; //'出生日期',
	private String cellphone1; //'手机号码',
	private String cellphone2; //'第二联系号码',
	private String qq; //'QQ号码',
	private String email; //'电子邮箱',
	private String address; //'联系地址',
	private int role; //'角色：0-管理员，1-教师，2-学生'
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdnumber() {
		return idnumber;
	}
	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}
	public boolean getSex() {
		return sex;
	}
	public void setSex(boolean sex) {
		this.sex = sex;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getCellphone1() {
		return cellphone1;
	}
	public void setCellphone1(String cellphone1) {
		this.cellphone1 = cellphone1;
	}
	public String getCellphone2() {
		return cellphone2;
	}
	public void setCellphone2(String cellphone2) {
		this.cellphone2 = cellphone2;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", account=" + account + ", password=" + password + ", name=" + name + ", idnumber="
				+ idnumber + ", sex=" + sex + ", profession=" + profession + ", specialty=" + specialty + ", birthday="
				+ birthday + ", cellphone1=" + cellphone1 + ", cellphone2=" + cellphone2 + ", qq=" + qq + ", email="
				+ email + ", address=" + address + ", role=" + role + "]";
	}
}
