<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>


<div id="footer">
	<div class="text">
		&copy; 2017 ${title } 版权所有，并保留所有权利。
		<br />
		<br />
		<div align="center" style="padding-bottom: 5px;">
			<a href="admin/" target="_blank">管理员入口</a>
		</div>

		<div class="blank"></div>

	</div>
</div>