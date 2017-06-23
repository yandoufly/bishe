package com.wjw.laboratory.action;

import java.net.URLDecoder;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;

import com.wjw.laboratory.entity.User;
import com.wjw.laboratory.service.UserService;
import com.wjw.laboratory.util.QueryHelper;

public class UserAction extends BaseAction {
	@Resource
	private UserService userService;
	
	private User user;
	

	// 列表页面
	public String listUI() throws Exception {
		QueryHelper queryHelper = new QueryHelper(User.class, "u");
		try {
			if (user != null) {
				if (StringUtils.isNotBlank(user.getName())) {
					user.setName(URLDecoder.decode(user.getName(), "utf-8"));
					queryHelper.addCondition("u.name like ?", "%" + user.getName() + "%");
				}

			}
			pageResult = userService.getPageResult(queryHelper, getPageNo(), getPageSize());
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}

		return "listUI";

	}

	//跳转到新增页面
	public String addUI(){
		return "addUI";
	}
	//保存新增
	public String add() throws Exception{
		if(user != null){
			System.out.println(user);
			userService.save(user);
		}
		return "list";
	}
	//跳转到编辑页面
	public String editUI(){
		if (user != null && user.getId() != null) {
			user = userService.findObjectById(user.getId());
		}
		return "editUI";
	}
	
	//保存编辑
	public String edit() throws Exception{
		if(user != null){
			userService.update(user);
		}
		return "list";
	}
	//删除
	public String delete(){
		if(user != null && user.getId() != null){
			userService.delete(user.getId());
		}
		return "list";
	}
	//批量删除
	public String deleteSelected(){
		if(selectedRow != null){
			for(int id: selectedRow){
				System.out.println("delete id:" + id);
				userService.delete(id);
			}
		}
		return "list";
	}
	
	
	public void setUser(User user) {
		this.user = user;
	}
	public User getUser() {
		return user;
	}
}
