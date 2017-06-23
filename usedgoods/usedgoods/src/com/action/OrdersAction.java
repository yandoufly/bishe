package com.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.entity.Goods;
import com.entity.Orders;
import com.service.GoodsService;
import com.service.OrdersService;

public class OrdersAction extends BaseAction {
	//
	private static final long serialVersionUID = 1L;
	private Orders orders;
	private List<Orders> list;
	// 注入Service的实例 需要在ApplicationContext.xml里面配置
	private OrdersService ordersService;
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
	public String createOrders() {
		List<Goods> goodsList = goodsService.show();
		this.map.put("goodsList", goodsList);
		return SUCCESS;
	}

	// 新增数据
	public String addOrders() {
		this.ordersService.save(this.orders);
		return SUCCESS;
	}

	// 按主键删除 若存在子表数据 则提示异常
	public String deleteOrders() {
		try {
			this.ordersService.delete(orders);
		} catch (Exception e) {
			this.map.put("msg", "存在关联项 不能删除");
		}
		return SUCCESS;
	}

	// 更新数据
	public String updateOrders() {
		this.ordersService.update(orders);
		return SUCCESS;
	}

	// 查询全部数据并输出分页代码
	public String getAllOrders() {
		this.list = new ArrayList<Orders>();
		List<Orders> tempList = new ArrayList<Orders>();
		tempList = this.ordersService.show();
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
			Orders u = (Orders) tempList.get(i);
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
			buffer.append("<a href=\"orders/getAllOrders.action?number=0\">首页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if ((Integer.parseInt(this.number) + 1) == 1) {
			buffer.append("上一页");
		} else {
			buffer.append("<a href=\"orders/getAllOrders.action?number=" + (Integer.parseInt(this.number) - 1)
					+ "\">上一页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if (this.maxPage <= (Integer.parseInt(this.number) + 1)) {
			buffer.append("下一页");
		} else {
			buffer.append("<a href=\"orders/getAllOrders.action?number=" + (Integer.parseInt(this.number) + 1)
					+ "\">下一页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if (this.maxPage <= (Integer.parseInt(this.number) + 1)) {
			buffer.append("尾页");
		} else {
			buffer.append("<a href=\"orders/getAllOrders.action?number=" + (this.maxPage - 1) + "\">尾页</a>");
		}
		this.html = buffer.toString();
		return SUCCESS;
	}

	// 按主键查询 并做好修改的准备
	public String getOrdersById() {
		List<Goods> goodsList = goodsService.show();
		this.map.put("goodsList", goodsList);
		this.orders = this.ordersService.checkId(this.id);
		return SUCCESS;
	}

	// 按条件查询数据(模糊查询)
	public String queryOrdersByCond() {
		this.list = new ArrayList<Orders>();
		if ("ordercode".equals(this.cond)) {
			list = this.ordersService.checkByLikeOrdercode(this.name);
		}
		if ("buyerid".equals(this.cond)) {
			list = this.ordersService.checkByLikeBuyerid(this.name);
		}
		if ("sellerid".equals(this.cond)) {
			list = this.ordersService.checkByLikeSellerid(this.name);
		}
		if ("goodsid".equals(this.cond)) {
			list = this.ordersService.checkByLikeGoodsid(this.name);
		}
		if ("num".equals(this.cond)) {
			list = this.ordersService.checkByLikeNum(this.name);
		}
		if ("price".equals(this.cond)) {
			list = this.ordersService.checkByLikePrice(this.name);
		}
		if ("total".equals(this.cond)) {
			list = this.ordersService.checkByLikeTotal(this.name);
		}
		if ("status".equals(this.cond)) {
			list = this.ordersService.checkByLikeStatus(this.name);
		}
		if ("addtime".equals(this.cond)) {
			list = this.ordersService.checkByLikeAddtime(this.name);
		}
		if ("receiver".equals(this.cond)) {
			list = this.ordersService.checkByLikeReceiver(this.name);
		}
		if ("address".equals(this.cond)) {
			list = this.ordersService.checkByLikeAddress(this.name);
		}
		if ("contact".equals(this.cond)) {
			list = this.ordersService.checkByLikeContact(this.name);
		}
		return SUCCESS;
	}

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public List<Orders> getList() {
		return list;
	}

	public void setList(List<Orders> list) {
		this.list = list;
	}

	public OrdersService getOrdersService() {
		return ordersService;
	}

	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}

	public GoodsService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
	
	public int getPageNumber() {
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
