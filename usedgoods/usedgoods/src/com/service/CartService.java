package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CartDAO;
import com.entity.Cart;

@Service("cartService")
public class CartService {
	@Autowired
	private CartDAO cartDAO;

	/** save 调用DAO中的插入方法 * */
	public void save(Cart cart) {
		this.cartDAO.save(cart);
	}

	/** update 调用DAO中的更新方法 * */
	public void update(Cart cart) {
		this.cartDAO.update(cart);
	}

	/** delete 调用DAO中的按主键删除方法 * */
	public void delete(String id) {
		this.cartDAO.delete(id);
	}

	/** delete * */
	public void delete(Cart cart) {
		this.cartDAO.delete(cart);
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Cart> show() {
		return cartDAO.show();
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Cart> checkUsersid(String name) {
		return this.cartDAO.queryByUsersid(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Cart> checkGoodsid(String name) {
		return this.cartDAO.queryByGoodsid(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Cart> checkNum(String name) {
		return this.cartDAO.queryByNum(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Cart> checkPrice(String name) {
		return this.cartDAO.queryByPrice(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Cart> checkAddtime(String name) {
		return this.cartDAO.queryByAddtime(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Cart> checkByLikeUsersid(String name) {
		return this.cartDAO.queryLikeByUsersid(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Cart> checkByLikeGoodsid(String name) {
		return this.cartDAO.queryLikeByGoodsid(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Cart> checkByLikeNum(String name) {
		return this.cartDAO.queryLikeByNum(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Cart> checkByLikePrice(String name) {
		return this.cartDAO.queryLikeByPrice(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Cart> checkByLikeAddtime(String name) {
		return this.cartDAO.queryLikeByAddtime(name);
	}

	/** checkId 调用DAO中的按主键查询方法 * */
	public Cart checkId(String id) {
		return this.cartDAO.queryById(id);
	}
}
