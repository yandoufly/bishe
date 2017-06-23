<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>    
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增实验室</title>
<link href="css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="css/ks.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<%@ include file="/admin/common/top.jsp"%>
	<div class="page">
		<div class="box mtop">
			<!-- 引入左边页面 -->
			<%@ include file="/admin/common/left.jsp"%>
			<div class="rightbox">
				<h2 class="mbx">用户中心 &gt; 新增实验室 &nbsp;&nbsp;&nbsp;</h2>
				<div class="morebt">
					<ul><li><a class="tab1" href="${pageContext.request.contextPath }/admin/classroom_listUI.action">实验室列表</a></li></ul>
					<ul><li><a class="tab2" href="${pageContext.request.contextPath }/admin/classroom_addUI.action">新增实验室</a></li></ul>
					<ul><li><a class="tab2" href="${pageContext.request.contextPath }/admin/appointment_listUI.action">预约管理</a></li></ul>
				</div>
				
				<div class="cztable">
				<form action="${pageContext.request.contextPath }/admin/classroom_add.action" method="post">
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td align="right">编号：</td>
							<td><s:textfield name="classroom.classroomId"/></td>
							<td align="right">名称：</td>
							<td><s:textfield name="classroom.name"/></td>
						</tr>
						<tr>
							<td align="right">类型：</td>
							<td><s:textfield name="classroom.type"/></td>
							<td align="right">容纳人数：</td>
							<td><s:textfield name="classroom.capacity"/></td>
						</tr>
						<tr align="center">
							<td colspan="5" height="40">
								<div align="center">
									<input type="submit" id="button3" value="提交信息" class="input2" />
								</div>
							</td>
						</tr>
					</table>
				</form>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
