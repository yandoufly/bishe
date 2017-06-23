<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加课程</title>
<link href="css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="css/ks.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
</head>

<body>
	<!-- 引入头部页面 -->
	<%@ include file="../common/top.jsp"%>
	<div class="page">
		<div class="box mtop">
			<!-- 引入左边页面 -->
			<%@ include file="../common/left.jsp"%>
			<div class="rightbox">
				<h2 class="mbx">课程中心 &gt; 添加课程</h2>
				<div class="morebt">
					<ul id="ulStudMsgHeadTab">
						<li><a class="tab1" onclick="" href="${pageContext.request.contextPath }/teacher/course_addUI.action">添加课程</a></li>
						<li><a class="tab2" onclick="" href="${pageContext.request.contextPath}/teacher/course_listUI.action">实验课表</a></li>
						<li><a class="tab2" onclick="" href="${pageContext.request.contextPath}/teacher/takeAppointmentPage.action">实验室预约</a></li>
						<li><a class="tab2" onclick="" href="${pageContext.request.contextPath}/teacher/questionList.action">查看问题</a></li>
					</ul>

				</div>

				<div class="cztable">
					<form action="${pageContext.request.contextPath}/teacher/course_add.action" method="post">
						<table width="100%" cellpadding="0" cellspacing="0">
							<tr>
								<td width="15%" align="right"><div align="right">课程名称：</div></td>
								<td><input id="name" size="60" name="course.name" class="input_2" /></td>
							</tr>
							<tr>
								<td width="15%" align="right"><div align="right">教师编号：</div></td>
								<td><input id="teacherId" size="60" name="course.teacherId" class="input_2" readonly="readonly" value="${session.user.account }" /></td>
							</tr>
							<tr>
								<td width="15%" align="right"><div align="right">教师名字：</div></td>
								<td><input id="teacherName" size="60" name="course.teacherName" class="input_2" readonly="readonly" value="${session.user.name }" /></td>
							</tr>
							<tr>
								<td width="15%" align="right"><div align="right">课程类型： </div></td>
								<td><select id="type" name="course.type">
										<option value="">请选择</option>
										<option value="1">软件类</option>
										<option value="2">硬件类</option>
								</select></td>
							</tr>
							<tr>
								<td width="15%" align="right"><div align="right">课程描述：</div></td>
								<td><textarea name="course.description" cols="80" rows="5" id="description" class="input_2"></textarea></td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<div align="center">
										<input type="submit" value="提交" class="input2" /> 
										<input type="submit" value="返回" class="input2" />
									</div>
								</td>
							</tr>
						</table>
					</form>
				</div>

			</div>
		</div>
		<div class="footer">
			
		</div>
	</div>
</body>
</html>
