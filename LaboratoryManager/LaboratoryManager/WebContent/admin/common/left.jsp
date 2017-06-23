<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="leftbox">
	<div class="l_nav2">
		<div class="ta1">
			<strong>个人中心</strong>
			<div class="leftbgbt"></div>
		</div>
		<div class="cdlist">
			<div><a href="${pageContext.request.contextPath }/admin/showUI.jsp">我的信息</a></div>
		</div>
		
		<div class="ta1">
			<strong>用户中心</strong>
			<div class="leftbgbt"></div>
		</div>
		<div class="cdlist">
			<div><a href="${pageContext.request.contextPath }/admin/user_listUI.action">用户列表</a></div>
			<div><a href="${pageContext.request.contextPath }/admin/user_addUI.action">新增用户</a></div>
		</div>

		
		<div class="ta1">
			<strong>教务中心</strong>
			<div class="leftbgbt2"></div>
		</div>
		<div class="cdlist">
			<div><a href="${pageContext.request.contextPath }/admin/classroom_listUI.action">实验室列表</a></div>
			<div><a href="${pageContext.request.contextPath }/admin/classroom_addUI.action">新增实验室</a></div>
			<div><a href="${pageContext.request.contextPath }/admin/appointment_listUI.action">预约管理</a></div>
		</div>
		
		<div class="ta1">
			<a href="" target="_blank"><strong></strong></a>
			<div class="leftbgbt2"></div>
		</div>
	</div>
</div>