package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.RebbsDAO;
import com.entity.Rebbs;


@Service("rebbsService")
public class RebbsService {
	@Autowired
	private RebbsDAO rebbsDAO;

	/** save 调用DAO中的插入方法 * */
	public void save(Rebbs rebbs) {
		this.rebbsDAO.save(rebbs);
	}

	/** update 调用DAO中的更新方法 * */
	public void update(Rebbs rebbs) {
		this.rebbsDAO.update(rebbs);
	}

	/** delete 调用DAO中的按主键删除方法 * */
	public void delete(String id) {
		this.rebbsDAO.delete(id);
	}

	/** delete * */
	public void delete(Rebbs rebbs) {
		this.rebbsDAO.delete(rebbs);
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Rebbs> show() {
		return rebbsDAO.show();
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Rebbs> checkUsersid(String name) {
		return this.rebbsDAO.queryByUsersid(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Rebbs> checkBbsid(String name) {
		return this.rebbsDAO.queryByBbsid(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Rebbs> checkContents(String name) {
		return this.rebbsDAO.queryByContents(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Rebbs> checkAddtime(String name) {
		return this.rebbsDAO.queryByAddtime(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Rebbs> checkByLikeUsersid(String name) {
		return this.rebbsDAO.queryLikeByUsersid(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Rebbs> checkByLikeBbsid(String name) {
		return this.rebbsDAO.queryLikeByBbsid(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Rebbs> checkByLikeContents(String name) {
		return this.rebbsDAO.queryLikeByContents(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Rebbs> checkByLikeAddtime(String name) {
		return this.rebbsDAO.queryLikeByAddtime(name);
	}

	/** checkId 调用DAO中的按主键查询方法 * */
	public Rebbs checkId(String id) {
		return this.rebbsDAO.queryById(id);
	}
}
