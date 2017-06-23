<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="../js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="../css/ks.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- 引入头部页面 -->
<%@ include file="./common/top.jsp" %>
<div class="page">
<div class="box mtop">
<!-- 引入左边页面 -->
<%@ include file="./common/left.jsp" %>
<div class="rightbox">


	<h2 class="mbx">我的信息 &gt; 班级信息&nbsp;&nbsp;&nbsp;自考</h2>
	<div class="morebt">


		<ul id="ulStudMsgHeadTab">
			<li><a class="tab2" onclick="" href="s_info.html">个人资料</a></li>
			<li><a class="tab2" onclick="" href="s_class.html">班级信息</a></li>

			<li><a class="tab2" onclick=""
				href="../User/StudentInfor/s_Msg.html">通知<span
					style="color: #ff0000; padding-left: 5px;"
					id="unreadSysMsgCount"></span></a></li>

		</ul>

	</div>
	<div class="cztable">
		<table border="0" cellspacing="0" cellpadding="0" width="100%">
			<tr>
				<td width="91" align="right">学校名称：</td>
				<td colspan="5">桂林电子科技大学&nbsp;</td>
			</tr>
			<tr>
				<td width="91" align="right">班级名称：</td>
				<td colspan="5">2013秋经济法学&nbsp;</td>
			</tr>

			<tr>
				<td align="right">班级号：</td>
				<td colspan="5">13003301&nbsp;</td>
			</tr>

			<tr>
				<td align="right"><div align="right">班主任老师：</div>&nbsp;</td>
				<td><div align="left">王娟</div></td>
				<td><div align="right">电话：</div>&nbsp;</td>
				<td><div align="left">15388088011</div>&nbsp;</td>


			</tr>




			<tr>
				<td colspan="5" align="left" valign="middle"><input
					type="button" name="button2" id="button2" value="点击提交"
					class="input2" onclick="onSaveProblem()" /></td>
				</tr>
			</table>
		</div>

	</div>
</div>
<div class="footer"></div></div>
</body>
</html>