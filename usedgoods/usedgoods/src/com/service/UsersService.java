package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UsersDAO;
import com.entity.Users;


@Service("usersService")
public class UsersService {
	@Autowired
	private UsersDAO usersDAO;

	/** save 调用DAO中的插入方法 * */
	public void save(Users users) {
		this.usersDAO.save(users);
	}

	/** update 调用DAO中的更新方法 * */
	public void update(Users users) {
		this.usersDAO.update(users);
	}

	/** delete 调用DAO中的按主键删除方法 * */
	public void delete(String id) {
		this.usersDAO.delete(id);
	}

	/** delete * */
	public void delete(Users users) {
		this.usersDAO.delete(users);
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Users> show() {
		return usersDAO.show();
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Users> checkUsername(String name) {
		return this.usersDAO.queryByUsername(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Users> checkPassword(String name) {
		return this.usersDAO.queryByPassword(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Users> checkRealname(String name) {
		return this.usersDAO.queryByRealname(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Users> checkSex(String name) {
		return this.usersDAO.queryBySex(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Users> checkBirthday(String name) {
		return this.usersDAO.queryByBirthday(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Users> checkContact(String name) {
		return this.usersDAO.queryByContact(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Users> checkAddress(String name) {
		return this.usersDAO.queryByAddress(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Users> checkCate(String name) {
		return this.usersDAO.queryByCate(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Users> checkRegdate(String name) {
		return this.usersDAO.queryByRegdate(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Users> checkByLikeUsername(String name) {
		return this.usersDAO.queryLikeByUsername(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Users> checkByLikePassword(String name) {
		return this.usersDAO.queryLikeByPassword(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Users> checkByLikeRealname(String name) {
		return this.usersDAO.queryLikeByRealname(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Users> checkByLikeSex(String name) {
		return this.usersDAO.queryLikeBySex(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Users> checkByLikeBirthday(String name) {
		return this.usersDAO.queryLikeByBirthday(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Users> checkByLikeContact(String name) {
		return this.usersDAO.queryLikeByContact(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Users> checkByLikeAddress(String name) {
		return this.usersDAO.queryLikeByAddress(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Users> checkByLikeCate(String name) {
		return this.usersDAO.queryLikeByCate(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Users> checkByLikeRegdate(String name) {
		return this.usersDAO.queryLikeByRegdate(name);
	}

	/** checkId 调用DAO中的按主键查询方法 * */
	public Users checkId(String id) {
		return this.usersDAO.queryById(id);
	}
}
