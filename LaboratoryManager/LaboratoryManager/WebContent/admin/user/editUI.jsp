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
<title>编辑用户</title>
<link href="css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="js/jBox/Skins/Blue/jbox.css" rel="stylesheet"
	type="text/css" />
<link href="css/ks.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<%@ include file="/admin/common/top.jsp"%>
	<div class="page">
		<div class="box mtop">
			<!-- 引入左边页面 -->
			<%@ include file="/admin/common/left.jsp"%>
			<div class="rightbox">

				<h2 class="mbx">用户中心 &gt; 编辑用户 &nbsp;&nbsp;&nbsp;</h2>
				<div class="morebt">
					<ul id="ulStudMsgHeadTab">
						<li><a class="tab2" onclick="" href="s_info.html">个人资料</a></li>

						<li><a class="tab2" onclick=""
							href="../User/StudentInfor/systemMsge.aspx.html">通知<span
								style="color: #ff0000; padding-left: 5px;"
								id="unreadSysMsgCount"></span></a></li>

					</ul>

				</div>
				<div class="cztable">
				<form action="${pageContext.request.contextPath }/admin/user_edit.action" method="post">
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td align="right" width="80">姓名：</td>
							<td><s:textfield id="name" name="user.name"/></td>
							<td align="right" width="90">身份证号码：</td>
							<td><s:textfield name="user.idnumber"/></td>
							<td rowspan="9"><div align="center">
									<img id="pic_face" height="160" width="120" src="images/student/photo.jpg" />
								</div>&nbsp;</td>
						</tr>
						<tr>
							<td align="right">性别：</td>
							<td><s:radio list="#{'true':'男','false':'女'}" name="user.sex"/></td>
							<td align="right">职称：</td>
							<td><s:textfield name="user.profession"/></td>
						</tr>
						<tr>
							<td align="right">专业：</td>
							<td><s:textfield name="user.specialty"/></td>
							<td align="right">出生日期：</td>
							<td><s:textfield name="user.birthday"/></td>
						</tr>
						<tr>
							<td colspan="4" align="left">联系方式（如联系方式有变动请及时修改，以便能及时联系到你。谢谢！）</td>
						</tr>
						<tr>
							<td align="right">手机号码：</td>
							<td><s:textfield name="user.cellphone1"/></td>
							<td align="right">第二联系号码：</td>
							<td><s:textfield name="user.cellphone2"/></td>
						</tr>
						<tr>
							<td align="right">QQ:</td>
							<td><s:textfield name="user.qq"/></td>
							<td align="right">电子邮箱：</td>
							<td><s:textfield name="user.email"/></td>
						</tr>
						<tr>
							<td align="right">联系地址：</td>
							<td colspan="4"><s:textfield name="user.address"/></td>
						</tr>
						<tr>
							<td align="right">角色：</td>
							<td colspan="4"><s:select name="user.role" list="#{'0':'管理员', '1':'教师', '2':'学生' }"/></td>
						</tr>
						<s:hidden name="user.id"/>
						<tr align="center">
							<td colspan="5" height="40">
								<div align="center">
									<input type="submit" id="button3" value="修改信息" class="input2" />
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
