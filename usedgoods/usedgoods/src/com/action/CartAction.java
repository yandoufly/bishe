package com.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.entity.Users;
import com.service.CartService;
import com.service.GoodsService;
import com.service.UsersService;
import com.entity.Goods;
import com.entity.Cart;

public class CartAction extends BaseAction {
	//
	private static final long serialVersionUID = 1L;
	private Cart cart;
	private List<Cart> list;
	// 注入Service的实例 需要在ApplicationContext.xml里面配置
	private CartService cartService;
	private UsersService usersService;
	private GoodsService goodsService;
	// 分页的页码
	private int pageNumber;
	// 最大分页数
	private int maxPage;
	// 分页输出
	private String html;
	// 当前页面数
	private String number;
	//
	private String id;
	private String name;
	private String cond;
	// 由OGNL规则get set后的map可以传递Action数据到jsp
	private Map<String, Object> map = new HashMap<String, Object>();

	// 准备新增数据 Struts2需要由Action跳转到JSP 判断是否需要查询数据并放入下拉菜单
	public String createCart() {
		List<Users> usersList = usersService.show();
		this.map.put("usersList", usersList);
		List<Goods> goodsList = goodsService.show();
		this.map.put("goodsList", goodsList);
		return SUCCESS;
	}

	// 新增数据
	public String addCart() {
		this.cartService.save(this.cart);
		return SUCCESS;
	}

	// 按主键删除 若存在子表数据 则提示异常
	public String deleteCart() {
		try {
			this.cartService.delete(cart);
		} catch (Exception e) {
			this.map.put("msg", "存在关联项 不能删除");
		}
		return SUCCESS;
	}

	// 更新数据
	public String updateCart() {
		this.cartService.update(cart);
		return SUCCESS;
	}

	// 查询全部数据并输出分页代码
	public String getAllCart() {
		this.list = new ArrayList<Cart>();
		List<Cart> tempList = new ArrayList<Cart>();
		tempList = this.cartService.show();
		this.pageNumber = tempList.size();
		this.maxPage = this.pageNumber;
		if (this.maxPage % 10 == 0) {
			this.maxPage = this.maxPage / 10;
		} else {
			this.maxPage = this.maxPage / 10 + 1;
		}
		if (this.number == null) {
			this.number = "0";
		}
		int start = Integer.parseInt(this.number) * 10;
		int over = (Integer.parseInt(this.number) + 1) * 10;
		int count = pageNumber - over;
		if (count <= 0) {
			over = pageNumber;
		}
		for (int i = start; i < over; i++) {
			Cart u = (Cart) tempList.get(i);
			this.list.add(u);
		}
		StringBuffer buffer = new StringBuffer();
		buffer.append("&nbsp;&nbsp;共为");
		buffer.append(maxPage);
		buffer.append("页&nbsp; 共有");
		buffer.append(pageNumber);
		buffer.append("条&nbsp; 当前为第");
		buffer.append((Integer.parseInt(this.number) + 1));
		buffer.append("页 &nbsp;");
		if ((Integer.parseInt(this.number) + 1) == 1) {
			buffer.append("首页");
		} else {
			buffer.append("<a href=\"cart/getAllCart.action?number=0\">首页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if ((Integer.parseInt(this.number) + 1) == 1) {
			buffer.append("上一页");
		} else {
			buffer.append(
					"<a href=\"cart/getAllCart.action?number=" + (Integer.parseInt(this.number) - 1) + "\">上一页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if (this.maxPage <= (Integer.parseInt(this.number) + 1)) {
			buffer.append("下一页");
		} else {
			buffer.append(
					"<a href=\"cart/getAllCart.action?number=" + (Integer.parseInt(this.number) + 1) + "\">下一页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if (this.maxPage <= (Integer.parseInt(this.number) + 1)) {
			buffer.append("尾页");
		} else {
			buffer.append("<a href=\"cart/getAllCart.action?number=" + (this.maxPage - 1) + "\">尾页</a>");
		}
		this.html = buffer.toString();
		return SUCCESS;
	}

	// 按主键查询 并做好修改的准备
	public String getCartById() {
		List<Users> usersList = usersService.show();
		this.map.put("usersList", usersList);
		List<Goods> goodsList = goodsService.show();
		this.map.put("goodsList", goodsList);
		this.cart = this.cartService.checkId(this.id);
		return SUCCESS;
	}

	// 按条件查询数据(模糊查询)
	public String queryCartByCond() {
		this.list = new ArrayList<Cart>();
		if ("usersid".equals(this.cond)) {
			list = this.cartService.checkByLikeUsersid(this.name);
		}
		if ("goodsid".equals(this.cond)) {
			list = this.cartService.checkByLikeGoodsid(this.name);
		}
		if ("num".equals(this.cond)) {
			list = this.cartService.checkByLikeNum(this.name);
		}
		if ("price".equals(this.cond)) {
			list = this.cartService.checkByLikePrice(this.name);
		}
		if ("addtime".equals(this.cond)) {
			list = this.cartService.checkByLikeAddtime(this.name);
		}
		return SUCCESS;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public List<Cart> getList() {
		return list;
	}

	public void setList(List<Cart> list) {
		this.list = list;
	}

	public CartService getCartService() {
		return cartService;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}

	public UsersService getUsersService() {
		return usersService;
	}

	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}

	public GoodsService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

 int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public String getHtml() {
		return html;
	}

	public void setHtml(String html) {
		this.html = html;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCond() {
		return cond;
	}

	public void setCond(String cond) {
		this.cond = cond;
	}

	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
