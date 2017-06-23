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
<title>实验课选课人员名单</title>
<link href="css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="css/ks.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	function importExcel(){
		document.forms[0].action = "${pageContext.request.contextPath }/teacher/importExcel.action";
		document.forms[0].submit();
	}
	
</script>
</head>
<body>
<!-- 引入头部页面 -->
<jsp:include page="./common/top.jsp" />
<div class="page">
<div class="box mtop">

<!-- 引入左边页面 -->
<jsp:include page="./common/left.jsp" />
	
<div class="rightbox">
<form name="form1" action="" method="post" enctype="multipart/form-data">

	<h2 class="mbx">教务中心 &gt; 成绩查询</h2>
	<div class="morebt">
		<ul>
			<li><a class="tab1" >查看实验成绩</a></li>
		</ul>
		
	</div>
	
	<div class="cztable">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr style="height: 25px" align="center">
					<th scope="col">课程编号</th>
					<th scope="col">课程名称</th>
					<th scope="col">考试成绩</th>
					<th scope="col">总评</th>
				</tr>
				<c:forEach items="${namelistList }" var="namelist">
					<tr align="center">
						<td>${namelist.courseId }</td>
						<td>${namelist.courseName }</td>
						<td>${namelist.examGrade }</td>
						<td>${namelist.totalGrade }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</form>
</div>
</div>
<div class="footer"></div>
</div>
</body>
</html>