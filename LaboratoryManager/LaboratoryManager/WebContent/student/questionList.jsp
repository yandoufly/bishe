<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看问题</title>
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
	<h2 class="mbx">教务中心 &gt; 查看问题</h2>
	<div class="morebt">
		<ul id="ulStudMsgHeadTab">
			<li><a class="tab1" onclick="" >查看问题</a></li>
			
				<span style="color: #ff0000; padding-left: 5px;" id="unreadSysMsgCount"></span></a>
			
		</ul>
	</div>
	<div class="cztable">
		<form name="form1" action="" method="post" enctype="multipart/form-data">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th>编号</th>
					<th>题目</th>
					<th>内容</th>
					<th>学生学号</th>
					<th>学生姓名</th>
					<th>选择</th>
				</tr>
				<c:forEach items="${questList }" var="question" varStatus="vs">
					<tr align="center">
						<td>${vs.index+1 }</td>
						<td>${question.title }</td>
						<td>
							<label title="${question.content }">
								<c:choose> 
								<c:when test="${fn:length(question.content) > 18}">
									<c:out value="${fn:substring(question.content, 0, 5)}..." />
								</c:when>
								<c:otherwise>
									<c:out value="${question.content}" />
								</c:otherwise>
								</c:choose>
							</label>
						</td>
						<td>${question.studentId }</td>
						<td>${question.studentName }</td>
						<td><a href="${pageContext.request.contextPath}/student/showQuestion.action?question.id=${question.id}">查看</a></td>
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