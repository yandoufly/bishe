package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.AdminDAO;
import com.entity.Admin;

@Service("adminService")
public class AdminService {
	@Autowired
	private AdminDAO adminDAO;
	
	/** save 调用DAO中的插入方法 * */
	public void save(Admin admin) {
		this.adminDAO.save(admin);
	}

	/** update 调用DAO中的更新方法 * */
	public void update(Admin admin) {
		this.adminDAO.update(admin);
	}

	/** delete 调用DAO中的按主键删除方法 * */
	public void delete(String id) {
		this.adminDAO.delete(id);
	}

	/** delete * */
	public void delete(Admin admin) {
		this.adminDAO.delete(admin);
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Admin> show() {
		return adminDAO.show();
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Admin> checkUsername(String name) {
		return this.adminDAO.queryByUsername(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Admin> checkPassword(String name) {
		return this.adminDAO.queryByPassword(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Admin> checkRealname(String name) {
		return this.adminDAO.queryByRealname(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Admin> checkContact(String name) {
		return this.adminDAO.queryByContact(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Admin> checkByLikeUsername(String name) {
		return this.adminDAO.queryLikeByUsername(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Admin> checkByLikePassword(String name) {
		return this.adminDAO.queryLikeByPassword(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Admin> checkByLikeRealname(String name) {
		return this.adminDAO.queryLikeByRealname(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Admin> checkByLikeContact(String name) {
		return this.adminDAO.queryLikeByContact(name);
	}

	/** checkId 调用DAO中的按主键查询方法 * */
	public Admin checkId(String id) {
		return this.adminDAO.queryById(id);
	}
}
