<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
<jsp:include page="../common/top.jsp" />
<div class="page">
<div class="box mtop">

<!-- 引入左边页面 -->
<jsp:include page="../common/left.jsp" />
	
<div class="rightbox">
<form name="form1" action="" method="post" enctype="multipart/form-data">

	<h2 class="mbx">教务中心 &gt; 查看实验选课学生</h2>
	<div class="morebt">
		<ul>
			<li><a class="tab1" >查看实验选课学生</a></li>
			<li><a class="tab2" href="${pageContext.request.contextPath }/teacher/exportExcelBycourseId.action?course.courseId=<s:property value="course.courseId" />">导出名单</a></li>
		</ul>
		<input type="file" name="userExcel"> <input type="button" onclick="javascript:importExcel()" value="录入成绩">
	</div>
	
	<div class="cztable">
		<div style="align:center;">
			查看实验
				课程编号为 &nbsp; <s:property value="course.courseId" /> &nbsp;
				课程名称为 &nbsp; <s:property value="course.name" /> &nbsp;
				选课人数为 &nbsp; <s:property value="course.number" /> &nbsp;
			的选课情况：
			<s:hidden name="course.courseId" id="courseId" />
			<script type="text/javascript">
				var courseId = $("#courseId").val();
				var list_url = "${pageContext.request.contextPath }/teacher/course_lookNamelist.action?course.courseId="+courseId;
			</script>
		</div>
		
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr style="height: 25px" align="center">
					<th scope="col">课程编号</th>
					<th scope="col">课程名称</th>
					<th scope="col">学生学号</th>
					<th scope="col">学生姓名</th>
					<th scope="col">学生性别</th>
					<th scope="col">学生专业</th>
					<th scope="col">总评</th>
				</tr>
				<s:iterator value="pageResult.items" status="st">
					<tr align="center">
						<td><s:property value="courseId"/></td>
						<td><s:property value="courseName"/></td>
						<td><s:property value="studentAccount"/></td>
						<td><s:property value="studentName"/></td>
						<td><s:property value="sex?'男':'女'"/></td>
						<td><s:property value="specialty"/></td>
						<td><s:property value="totalGrade"/></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
		<jsp:include page="/common/pageNavigator.jsp" />
	</div>
</form>
</div>
</div>
<div class="footer"></div>
</div>
</body>
</html>