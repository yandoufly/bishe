package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BbsDAO;
import com.entity.Bbs;


@Service("bbsService")
public class BbsService {

	@Autowired
	private BbsDAO bbsDAO;

	/** save 调用DAO中的插入方法 * */
	public void save(Bbs bbs) {
		this.bbsDAO.save(bbs);
	}

	/** update 调用DAO中的更新方法 * */
	public void update(Bbs bbs) {
		this.bbsDAO.update(bbs);
	}

	/** delete 调用DAO中的按主键删除方法 * */
	public void delete(String id) {
		this.bbsDAO.delete(id);
	}

	/** delete * */
	public void delete(Bbs bbs) {
		this.bbsDAO.delete(bbs);
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Bbs> show() {
		return bbsDAO.show();
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Bbs> checkUsersid(String name) {
		return this.bbsDAO.queryByUsersid(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Bbs> checkTitle(String name) {
		return this.bbsDAO.queryByTitle(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Bbs> checkContents(String name) {
		return this.bbsDAO.queryByContents(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Bbs> checkAddtime(String name) {
		return this.bbsDAO.queryByAddtime(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Bbs> checkHits(String name) {
		return this.bbsDAO.queryByHits(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Bbs> checkRepnum(String name) {
		return this.bbsDAO.queryByRepnum(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Bbs> checkByLikeUsersid(String name) {
		return this.bbsDAO.queryLikeByUsersid(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Bbs> checkByLikeTitle(String name) {
		return this.bbsDAO.queryLikeByTitle(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Bbs> checkByLikeContents(String name) {
		return this.bbsDAO.queryLikeByContents(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Bbs> checkByLikeAddtime(String name) {
		return this.bbsDAO.queryLikeByAddtime(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Bbs> checkByLikeHits(String name) {
		return this.bbsDAO.queryLikeByHits(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Bbs> checkByLikeRepnum(String name) {
		return this.bbsDAO.queryLikeByRepnum(name);
	}

	/** checkId 调用DAO中的按主键查询方法 * */
	public Bbs checkId(String id) {
		return this.bbsDAO.queryById(id);
	}
}
