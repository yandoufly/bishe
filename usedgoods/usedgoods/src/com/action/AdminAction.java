package com.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.entity.Admin;
import com.service.AdminService;

public class AdminAction extends BaseAction {
	//
	private static final long serialVersionUID = 1L;
	private Admin admin;
	private List<Admin> list;
	// 注入Service的实例 需要在ApplicationContext.xml里面配置
	private AdminService adminService;
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
	private String password;
	private String repassword;
	// 由OGNL规则get set后的map可以传递Action数据到jsp
	private Map<String, Object> map = new HashMap<String, Object>();

	// 用户登录 1 判断用户名是否存在 2 判断密码是否正确 3 登录成功用session保存数据
	public String login() {
		List<Admin> adminList = this.adminService.checkUsername(this.admin.getUsername());
		if (adminList.size() == 0) {
			return "adminerror";
		} else {
			Admin adminEntity = adminList.get(0);
			if (this.admin.getPassword().equals(adminEntity.getPassword())) {
				this.session.put("adminid", adminEntity.getAdminid());
				this.session.put("adminname", adminEntity.getUsername());
				this.session.put("realname", adminEntity.getRealname());
			} else {
				return "adminerror";
			}
		}
		return SUCCESS;
	}

	// 准备修改密码 由于拦截器的存在 不需要判断用户是否登录 但是需要有这个过程
	public String prePwd() {
		return SUCCESS;
	}

	// 修改密码
	public String editpwd() {
		String adminid = (String) this.session.get("adminid");
		Admin adminEntity = this.adminService.checkId(adminid);
		if (adminEntity.getPassword().equals(admin.getPassword())) {
			adminEntity.setPassword(this.repassword);
			this.adminService.update(adminEntity);
		} else {
			this.request.put("message", "旧密码错误");
		}
		return SUCCESS;
	}

	// 退出系统
	public String exit() {
		this.session.clear();
		return SUCCESS;
	}

	// 准备新增数据 Struts2需要由Action跳转到JSP 判断是否需要查询数据并放入下拉菜单
	public String createAdmin() {
		return SUCCESS;
	}

	// 新增数据
	public String addAdmin() {
		this.adminService.save(this.admin);
		return SUCCESS;
	}

	// 按主键删除 若存在子表数据 则提示异常
	public String deleteAdmin() {
		try {
			this.adminService.delete(admin);
		} catch (Exception e) {
			this.map.put("msg", "存在关联项 不能删除");
		}
		return SUCCESS;
	}

	// 更新数据
	public String updateAdmin() {
		this.adminService.update(admin);
		return SUCCESS;
	}

	// 查询全部数据并输出分页代码
	public String getAllAdmin() {
		this.list = new ArrayList<Admin>();
		List<Admin> tempList = new ArrayList<Admin>();
		tempList = this.adminService.show();
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
			Admin u = (Admin) tempList.get(i);
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
			buffer.append("<a href=\"admin/getAllAdmin.action?number=0\">首页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if ((Integer.parseInt(this.number) + 1) == 1) {
			buffer.append("上一页");
		} else {
			buffer.append(
					"<a href=\"admin/getAllAdmin.action?number=" + (Integer.parseInt(this.number) - 1) + "\">上一页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if (this.maxPage <= (Integer.parseInt(this.number) + 1)) {
			buffer.append("下一页");
		} else {
			buffer.append(
					"<a href=\"admin/getAllAdmin.action?number=" + (Integer.parseInt(this.number) + 1) + "\">下一页</a>");
		}
		buffer.append("&nbsp;&nbsp;");
		if (this.maxPage <= (Integer.parseInt(this.number) + 1)) {
			buffer.append("尾页");
		} else {
			buffer.append("<a href=\"admin/getAllAdmin.action?number=" + (this.maxPage - 1) + "\">尾页</a>");
		}
		this.html = buffer.toString();
		return SUCCESS;
	}

	// 按主键查询 并做好修改的准备
	public String getAdminById() {
		this.admin = this.adminService.checkId(this.id);
		return SUCCESS;
	}

	// 按条件查询数据(模糊查询)
	public String queryAdminByCond() {
		this.list = new ArrayList<Admin>();
		if ("username".equals(this.cond)) {
			list = this.adminService.checkByLikeUsername(this.name);
		}
		if ("password".equals(this.cond)) {
			list = this.adminService.checkByLikePassword(this.name);
		}
		if ("realname".equals(this.cond)) {
			list = this.adminService.checkByLikeRealname(this.name);
		}
		if ("contact".equals(this.cond)) {
			list = this.adminService.checkByLikeContact(this.name);
		}
		return SUCCESS;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public List<Admin> getList() {
		return list;
	}

	public void setList(List<Admin> list) {
		this.list = list;
	}

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

}
