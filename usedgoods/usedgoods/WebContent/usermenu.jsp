<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="userMenu">
	
	<a href="index/usercenter.action"><img src="themes/ecmoban_m182012/images/u2.gif" />用户信息</a>
	<a href="index/prePwd.action"><img src="themes/ecmoban_m182012/images/u3.gif" />修改密码</a>
	<s:if test="#session.role == '卖家'">
	<a href="index/preGoods.action"><img src="themes/ecmoban_m182012/images/u3.gif" />发布商品</a>
	<a href="index/myGoods.action"><img src="themes/ecmoban_m182012/images/u3.gif" />我的商品</a>
	<a href="index/mysell.action"><img src="themes/ecmoban_m182012/images/u3.gif" />我的销售单</a>
	</s:if>
	<s:if test="#session.role == '买家'">
	<a href="index/cart.action"><img src="themes/ecmoban_m182012/images/u3.gif" />购物车</a>
	<a href="index/myorder.action"><img src="themes/ecmoban_m182012/images/u3.gif" />我的订单</a>
	</s:if>
	<a href="index/exit.action" style="background: none; text-align: right; margin-right: 10px;"> 
	<img src="themes/ecmoban_m182012/images/bnt_sign.gif" /> </a>
	
</div>
