package com.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.entity.Users;
import com.service.BbsService;
import com.service.RebbsService;
import com.service.UsersService;
import com.entity.Bbs;
import com.entity.Rebbs;

public class RebbsAction extends BaseAction {
	//
	private static final long serialVersionUID = 1L;
	private Rebbs rebbs;
	private List<Rebbs> list;
	// 注入Service的实例 需要在ApplicationContext.xml里面配置
	private RebbsService rebbsService;
	private UsersService usersService;
	private BbsService bbsService;
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
	public String createRebbs() {
		List<Users> usersList = usersService.show();
		this.map.put("usersList", usersList);
		List<Bbs> bbsList = bbsService.show();
		this.map.put("bbsList", bbsList);
		return SUCCESS;
	}

	// 新增数据
	public String addRebbs() {
		this.rebbsService.save(this.rebbs);
		return SUCCESS;
	}

	// 按主键删除 若存在子表数据 则提示异常
	public String deleteRebbs() {
		try {
			this.rebbsService.delete(rebbs);
		} catch (Exception e) {
			this.map.put("msg", "存在关联项 不能删除");
		}
		return SUCCESS;
	}

	// 更新数据
	public String updateRebbs() {
		this.rebbsService.update(rebbs);
		return SUCCESS;
	}

	// 查询全部数据并输出分页代码
	public String getAllRebbs() {
		this.list = new ArrayList<Rebbs>();
		List<Rebbs> tempList = new ArrayList<Rebbs>();
		tempList = this.rebbsService.show();
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
			Rebbs u = (Rebbs) tempList.get(i);
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
			buffer.append("<a href=\"rebbs/getAllRebbs.action?number=0\">首页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if ((Integer.parseInt(this.number) + 1) == 1) {
			buffer.append("上一页");
		} else {
			buffer.append(
					"<a href=\"rebbs/getAllRebbs.action?number=" + (Integer.parseInt(this.number) - 1) + "\">上一页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if (this.maxPage <= (Integer.parseInt(this.number) + 1)) {
			buffer.append("下一页");
		} else {
			buffer.append(
					"<a href=\"rebbs/getAllRebbs.action?number=" + (Integer.parseInt(this.number) + 1) + "\">下一页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if (this.maxPage <= (Integer.parseInt(this.number) + 1)) {
			buffer.append("尾页");
		} else {
			buffer.append("<a href=\"rebbs/getAllRebbs.action?number=" + (this.maxPage - 1) + "\">尾页</a>");
		}
		this.html = buffer.toString();
		return SUCCESS;
	}

	// 按主键查询 并做好修改的准备
	public String getRebbsById() {
		List<Users> usersList = usersService.show();
		this.map.put("usersList", usersList);
		List<Bbs> bbsList = bbsService.show();
		this.map.put("bbsList", bbsList);
		this.rebbs = this.rebbsService.checkId(this.id);
		return SUCCESS;
	}

	// 按条件查询数据(模糊查询)
	public String queryRebbsByCond() {
		this.list = new ArrayList<Rebbs>();
		if ("usersid".equals(this.cond)) {
			list = this.rebbsService.checkByLikeUsersid(this.name);
		}
		if ("bbsid".equals(this.cond)) {
			list = this.rebbsService.checkByLikeBbsid(this.name);
		}
		if ("contents".equals(this.cond)) {
			list = this.rebbsService.checkByLikeContents(this.name);
		}
		if ("addtime".equals(this.cond)) {
			list = this.rebbsService.checkByLikeAddtime(this.name);
		}
		return SUCCESS;
	}

	public Rebbs getRebbs() {
		return rebbs;
	}

	public void setRebbs(Rebbs rebbs) {
		this.rebbs = rebbs;
	}

	public List<Rebbs> getList() {
		return list;
	}

	public void setList(List<Rebbs> list) {
		this.list = list;
	}

	public RebbsService getRebbsService() {
		return rebbsService;
	}

	public void setRebbsService(RebbsService rebbsService) {
		this.rebbsService = rebbsService;
	}

	public UsersService getUsersService() {
		return usersService;
	}

	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}

	public BbsService getBbsService() {
		return bbsService;
	}

	public void setBbsService(BbsService bbsService) {
		this.bbsService = bbsService;
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
