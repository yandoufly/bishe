package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.GoodsDAO;
import com.entity.Goods;

@Service("goodsService")
public class GoodsService {
	@Autowired
	private GoodsDAO goodsDAO;

	/** save 调用DAO中的插入方法 * */
	public void save(Goods goods) {
		this.goodsDAO.save(goods);
	}

	/** update 调用DAO中的更新方法 * */
	public void update(Goods goods) {
		this.goodsDAO.update(goods);
	}

	/** delete 调用DAO中的按主键删除方法 * */
	public void delete(String id) {
		this.goodsDAO.delete(id);
	}

	/** delete * */
	public void delete(Goods goods) {
		this.goodsDAO.delete(goods);
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Goods> show() {
		return goodsDAO.show();
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Goods> showAll() {
		return goodsDAO.showAll();
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Goods> hot() {
		return goodsDAO.hot();
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Goods> news() {
		return goodsDAO.news();
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> front(String name) {
		return this.goodsDAO.front(name);
	}

	public List<Goods> check(String name) {
		return this.goodsDAO.query(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> checkUsersid(String name) {
		return this.goodsDAO.queryByUsersid(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> checkGoodsname(String name) {
		return this.goodsDAO.queryByGoodsname(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> checkCateid(String name) {
		return this.goodsDAO.queryByCateid(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> checkPrice(String name) {
		return this.goodsDAO.queryByPrice(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> checkImage1(String name) {
		return this.goodsDAO.queryByImage1(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> checkImage2(String name) {
		return this.goodsDAO.queryByImage2(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> checkImage3(String name) {
		return this.goodsDAO.queryByImage3(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> checkImage4(String name) {
		return this.goodsDAO.queryByImage4(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> checkStorage(String name) {
		return this.goodsDAO.queryByStorage(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> checkSellnum(String name) {
		return this.goodsDAO.queryBySellnum(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> checkAddtime(String name) {
		return this.goodsDAO.queryByAddtime(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> checkHits(String name) {
		return this.goodsDAO.queryByHits(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> checkStatus(String name) {
		return this.goodsDAO.queryByStatus(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Goods> checkContents(String name) {
		return this.goodsDAO.queryByContents(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Goods> checkByLikeUsersid(String name) {
		return this.goodsDAO.queryLikeByUsersid(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Goods> checkByLikeGoodsname(String name) {
		return this.goodsDAO.queryLikeByGoodsname(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Goods> checkByLikeCateid(String name) {
		return this.goodsDAO.queryLikeByCateid(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Goods> checkByLikePrice(String name) {
		return this.goodsDAO.queryLikeByPrice(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Goods> checkByLikeImage1(String name) {
		return this.goodsDAO.queryLikeByImage1(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Goods> checkByLikeImage2(String name) {
		return this.goodsDAO.queryLikeByImage2(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Goods> checkByLikeImage3(String name) {
		return this.goodsDAO.queryLikeByImage3(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Goods> checkByLikeImage4(String name) {
		return this.goodsDAO.queryLikeByImage4(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Goods> checkByLikeStorage(String name) {
		return this.goodsDAO.queryLikeByStorage(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Goods> checkByLikeSellnum(String name) {
		return this.goodsDAO.queryLikeBySellnum(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Goods> checkByLikeAddtime(String name) {
		return this.goodsDAO.queryLikeByAddtime(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Goods> checkByLikeHits(String name) {
		return this.goodsDAO.queryLikeByHits(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Goods> checkByLikeStatus(String name) {
		return this.goodsDAO.queryLikeByStatus(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Goods> checkByLikeContents(String name) {
		return this.goodsDAO.queryLikeByContents(name);
	}

	/** checkId 调用DAO中的按主键查询方法 * */
	public Goods checkId(String id) {
		return this.goodsDAO.queryById(id);
	}
}
