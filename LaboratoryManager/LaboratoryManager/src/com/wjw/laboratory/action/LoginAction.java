package com.wjw.laboratory.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import com.wjw.laboratory.entity.User;
import com.wjw.laboratory.service.UserService;

public class LoginAction {
	
	@Resource
	private UserService userService;
	
	private User user;
	
	//处理登录
	public String login(){
		System.out.println(user);
		if(user != null){
			String hql = "From User u where u.account=? and u.password=?";
			List<Object> parameters = new ArrayList<Object>();
			parameters.add(user.getAccount());
			parameters.add(user.getPassword());
			List<User> list = userService.findObjects(hql, parameters);
			if(list != null && list.size() > 0){
				User user2 = list.get(0);
				System.out.println(user2);
				ServletActionContext.getRequest().getSession().setAttribute("user", user2); //保存到session域
				
				if(user2.getRole() == 2){ //学生
					return "student";
				}else if(user2.getRole() == 1){ //老师
					return "teacher";
				}else{ //管理员
					return "manager";
				}
			}
		}
		ServletActionContext.getRequest().setAttribute("msg", "登录失败，请检查输入！");
		return "login";
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
