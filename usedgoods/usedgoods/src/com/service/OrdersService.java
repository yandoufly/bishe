package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.OrdersDAO;
import com.entity.Orders;

@Service("ordersService")
public class OrdersService {
	@Autowired
	private OrdersDAO ordersDAO;

	/** save 调用DAO中的插入方法 * */
	public void save(Orders orders) {
		this.ordersDAO.save(orders);
	}

	/** update 调用DAO中的更新方法 * */
	public void update(Orders orders) {
		this.ordersDAO.update(orders);
	}

	/** delete 调用DAO中的按主键删除方法 * */
	public void delete(String id) {
		this.ordersDAO.delete(id);
	}

	/** delete * */
	public void delete(Orders orders) {
		this.ordersDAO.delete(orders);
	}

	/** show 调用DAO中的查询全部方法 * */
	public List<Orders> show() {
		return ordersDAO.show();
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Orders> checkOrdercode(String name) {
		return this.ordersDAO.queryByOrdercode(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Orders> checkBuyerid(String name) {
		return this.ordersDAO.queryByBuyerid(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Orders> checkSellerid(String name) {
		return this.ordersDAO.queryBySellerid(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Orders> checkGoodsid(String name) {
		return this.ordersDAO.queryByGoodsid(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Orders> checkNum(String name) {
		return this.ordersDAO.queryByNum(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Orders> checkPrice(String name) {
		return this.ordersDAO.queryByPrice(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Orders> checkTotal(String name) {
		return this.ordersDAO.queryByTotal(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Orders> checkStatus(String name) {
		return this.ordersDAO.queryByStatus(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Orders> checkAddtime(String name) {
		return this.ordersDAO.queryByAddtime(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Orders> checkReceiver(String name) {
		return this.ordersDAO.queryByReceiver(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Orders> checkAddress(String name) {
		return this.ordersDAO.queryByAddress(name);
	}

	/** check 调用DAO中的精确查询方法 * */
	public List<Orders> checkContact(String name) {
		return this.ordersDAO.queryByContact(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Orders> checkByLikeOrdercode(String name) {
		return this.ordersDAO.queryLikeByOrdercode(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Orders> checkByLikeBuyerid(String name) {
		return this.ordersDAO.queryLikeByBuyerid(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Orders> checkByLikeSellerid(String name) {
		return this.ordersDAO.queryLikeBySellerid(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Orders> checkByLikeGoodsid(String name) {
		return this.ordersDAO.queryLikeByGoodsid(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Orders> checkByLikeNum(String name) {
		return this.ordersDAO.queryLikeByNum(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Orders> checkByLikePrice(String name) {
		return this.ordersDAO.queryLikeByPrice(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Orders> checkByLikeTotal(String name) {
		return this.ordersDAO.queryLikeByTotal(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Orders> checkByLikeStatus(String name) {
		return this.ordersDAO.queryLikeByStatus(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Orders> checkByLikeAddtime(String name) {
		return this.ordersDAO.queryLikeByAddtime(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Orders> checkByLikeReceiver(String name) {
		return this.ordersDAO.queryLikeByReceiver(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Orders> checkByLikeAddress(String name) {
		return this.ordersDAO.queryLikeByAddress(name);
	}

	/** check 调用DAO中的模糊查询方法 * */
	public List<Orders> checkByLikeContact(String name) {
		return this.ordersDAO.queryLikeByContact(name);
	}

	/** checkId 调用DAO中的按主键查询方法 * */
	public Orders checkId(String id) {
		return this.ordersDAO.queryById(id);
	}
}
