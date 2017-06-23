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
<title>实验选课</title>
<link href="css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="css/ks.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	function docourseChoose(courseId){
		alert("courseId:" + courseId);
		document.forms[0].action = "${pageContext.request.contextPath}/student/courseChoose.action?course.courseId="+courseId;
		document.forms[0].submit();
	}
</script>
</head>
<body>
<!-- 引入头部页面 -->
<%@ include file="./common/top.jsp" %>
<div class="page">
<div class="box mtop">
<!-- 引入左边页面 -->
<%@ include file="./common/left.jsp" %>
<div class="rightbox">
	<h2 class="mbx">教务中心 &gt; 实验选课</h2>
	<div class="morebt">
		<ul id="ulStudMsgHeadTab">
			<li><a class="tab1" >实验选课</a></li>
			
				<span style="color: #ff0000; padding-left: 5px;" id="unreadSysMsgCount"></span></a>
			
		</ul>
	</div>
	<div class="cztable">
		<form name="form1" action="" method="post" enctype="multipart/form-data">
			<input type="hidden" name="namelist.studentAccount" value="${session.user.account }">
			<input type="hidden" name="namelist.studentName" value="${session.user.name }">
			<input type="hidden" name="namelist.sex" value="${session.user.sex }">
			<input type="hidden" name="namelist.specialty" value="${session.user.specialty }">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th>实验课号</th>
					<th>实验名称</th>
					<th>教师编号</th>
					<th>教师名字</th>
					<th>课程类型</th>
					<th>选择</th>
				</tr>
				<c:forEach items="${courseList }" var="course" varStatus="vs">
					<tr align="center">
						<td>${course.courseId }</td>
						<td>${course.name }</td>
						<td>${course.teacherId }</td>
						<td>${course.teacherName }</td>
						<td>${course.type }</td>
						<td><a href="javascript:docourseChoose(${course.courseId})">选课</a>
						    <a href="javascript:docourseChoose(${course.courseId})">退课</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</form>
	</div>
</div>
</div>
</div>
</body>
</html>