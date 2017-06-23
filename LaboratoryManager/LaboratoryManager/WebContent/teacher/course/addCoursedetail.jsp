<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加具体实验</title>
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
				<h2 class="mbx">教务中心 &gt; 添加实验</h2>
				<div class="morebt">
					<ul id="ulStudMsgHeadTab">
						<li><a class="tab1" onclick="" >添加实验</a></li>
						
					</ul>

				</div>

				<div class="cztable">
					<form action="${pageContext.request.contextPath }/teacher/course_addCoursedetail.action" method="post" enctype="multipart/form-data">
						<table width="100%" cellpadding="0" cellspacing="0">
							<tr>
								<td width="15%" align="right"><div align="right">课程编号：</div></td>
								<td><input type="text" readonly="readonly" name="coursedetail.courseId" value='<s:property value="course.courseId"/>'> </td>
							</tr>
							<tr>
								<td width="15%" align="right"><div align="right">课程名称：</div></td>
								<td><input type="text" readonly="readonly" name="coursedetail.courseName" value='<s:property value="course.name"/>'> </td>
							</tr>
							<tr>
								<td width="15%" align="right"><div align="right">实验题目：</div></td>
								<td><input type="text" size="60" name="coursedetail.title" class="input_2" /></td>
							</tr>
							
							<tr>
								<td width="15%" align="right"><div align="right">实验内容：</div></td>
								<td><textarea name="coursedetail.content" cols="80" rows="5" class="input_2"></textarea></td>
							</tr>
							<tr>
								<td width="15%" align="right"><div align="right">实验时间：</div></td>
								<td><input type="text" size="60" name="coursedetail.experimentTime" class="input_2"/>（第 ${appointment.startWeek }~${appointment.endWeek }周）</td>
							</tr>
							
							<tr>
								<td width="15%" align="right"><div align="right">添加附件：</div></td>
								<td><input type="file" size="60" name="upload" class="input_2" /></td>
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
