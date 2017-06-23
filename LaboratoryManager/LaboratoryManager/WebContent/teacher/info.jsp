<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="../js/jBox/Skins/Blue/jbox.css" rel="stylesheet"
	type="text/css" />
<link href="../css/ks.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<%@ include file="./common/top.jsp"%>
	<div class="page">
		<div class="box mtop">
			<!-- 引入左边页面 -->
			<%@ include file="./common/left.jsp"%>
			<div class="rightbox">

				<h2 class="mbx">我的信息 &gt; 个人资料 &nbsp;&nbsp;&nbsp;</h2>
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
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td align="right" width="80">姓名：</td>
							<td>***&nbsp;</td>
							<td align="right" width="90">身份证号码：</td>
							<td>430181198612113330&nbsp;</td>

							<td rowspan="9"><div align="center">
									<img id="pic_face" height="160" width="120"
										src="Images/Student/photo.jpg" />
								</div>&nbsp;</td>
						</tr>
						<tr>
							<td align="right">性别：</td>
							<td>男&nbsp;</td>
							<td align="right">职称：</td>
							<td>教授&nbsp;</td>
						</tr>
						<tr>
							<td align="right">专业：</td>
							<td>软件工程&nbsp;</td>
							<td align="right">出生日期：</td>
							<td>1969.05.13&nbsp;</td>
						</tr>




						<tr>
							<td colspan="4" align="left">联系方式（如联系方式有变动请及时修改，以便能及时联系到你。谢谢！）</td>

						</tr>
						<tr>
							<td align="right">手机号码：</td>
							<td>15111141999</td>
							<td align="right">第二联系号码：</td>
							<td></td>

						</tr>
						<tr>
							<td align="right">QQ:</td>
							<td></td>
							<td align="right">电子邮箱：</td>
							<td></td>

						</tr>
						<tr>
							<td align="right">联系地址：</td>
							<td colspan="4"></td>
						</tr>
						<tr align="center">
							<td colspan="5" height="40">
								<div align="center">

									<input type="button" id="button2" value="联系方式有修改"
										onclick="submitMail()" class="input2" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="button" id="button3" value="修改信息"
										onclick="submitMail()" class="input2" />
								</div>
							</td>
						</tr>
					</table>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
