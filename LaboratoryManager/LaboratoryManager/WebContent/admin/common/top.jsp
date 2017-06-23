<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="banner">
	<div class="bgh">
		<div class="page">
			<div id="logo">
				<a href="#"> <img src="images/student/gdlogo.gif" alt="" width="175" height="55" /></a>
			</div>
			
			<div class="blog_nav">
				<ul>
					<li><a href="${pageContext.request.contextPath }/admin/showUI.jsp">我的信息</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/user_listUI.action">用户列表</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/classroom_listUI.action">实验室列表</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/appointment_listUI.action">预约管理</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>