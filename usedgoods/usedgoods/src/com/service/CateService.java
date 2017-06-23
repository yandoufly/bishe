package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CateDAO;
import com.entity.Cate;

@Service("cateService")
public class CateService {
	@Autowired
	private CateDAO cateDAO;

	/** save 调用DAO中的插入方法 * */
	public void save(Cate cate) {
		this.cateDAO.save(cate);
	}

	/** update 调用DAO中的更新方法 * */
	public void update(Cate cate) {
		this.cateDAO.update(cate);
	}

	/** delete 调用DAO中的按主键删除方法 * */
	public void delete(String id) {
		this.cateDAO.delete(id);
	}

	/** delete * */
	public void delete(Cate cate) {
		this.cateDAO.delete(cate);
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Cate> show() {
		return cateDAO.show();
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Cate> front() {
		return cateDAO.front();
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Cate> checkCatename(String name) {
		return this.cateDAO.queryByCatename(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Cate> checkByLikeCatename(String name) {
		return this.cateDAO.queryLikeByCatename(name);
	}

	/** checkId 调用DAO中的按主键查询方法 * */
	public Cate checkId(String id) {
		return this.cateDAO.queryById(id);
	}
}
