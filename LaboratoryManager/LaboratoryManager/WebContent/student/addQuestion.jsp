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
<title>提出问题</title>
<link href="css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="css/ks.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
</head>

<body>
	<!-- 引入头部页面 -->
	<%@ include file="./common/top.jsp"%>
	<div class="page">
		<div class="box mtop">
			<!-- 引入左边页面 -->
			<%@ include file="./common/left.jsp"%>
			<div class="rightbox">
				<h2 class="mbx">教务中心 &gt; 提出问题</h2>
				<div class="morebt">
					<ul id="ulStudMsgHeadTab">
						<li><a class="tab1" onclick="" >提出问题</a></li>
						
					</ul>

				</div>

				<div class="cztable">
					<form action="${pageContext.request.contextPath}/student/addQuestion.action" method="post">
						<table width="100%" cellpadding="0" cellspacing="0">
							<tr>
								<td width="15%" align="right"><div align="right">问题题目：</div></td>
								<td><input id="name" size="60" name="question.title" class="input_2" /></td>
							</tr>
							<tr>
								<td width="15%" align="right"><div align="right">问题描述：</div></td>
								<td><textarea name="question.content" cols="80" rows="5" id="description" class="input_2"></textarea></td>
							</tr>
							<tr>
								<td width="15%" align="right"><div align="right">学生编号：</div></td>
								<td><input id="teacherId" size="60" name="question.studentId" class="input_2" value="${user.account }" /></td>
							</tr>
							<tr>
								<td width="15%" align="right"><div align="right">学生名字：</div></td>
								<td><input id="teacherName" size="60" name="question.studentName" class="input_2" value="${user.name }" /></td>
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
