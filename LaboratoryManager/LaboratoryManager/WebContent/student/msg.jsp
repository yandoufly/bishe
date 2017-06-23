<%@ page language="java" contentType="text/html; charset=UTF-8"%>

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
	<%@ include file="./common/top.jsp"%>
	<div class="page">
		<div class="box mtop">
			<!-- 引入左边页面 -->
			<%@ include file="./common/left.jsp"%>
			<div class="rightbox">

				<h2 class="mbx">我的信息 &gt; 通知</h2>
				<div class="morebt">


					<ul id="ulStudMsgHeadTab">
						<li><a class="tab2" onclick=""
							href="../../MyInfo/Index.aspx.html">个人资料</a></li>
						<li><a class="tab2" onclick=""
							href="../../MyInfo/s_class.html">班级信息</a></li>

						<li><a class="tab2" onclick="" href="s_Msg.html">通知<span
								style="color: #ff0000; padding-left: 5px;"
								id="unreadSysMsgCount"></span></a></li>

					</ul>

				</div>
				<div class="cztable">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<th style="text-align: left;" width="5%">序号</th>
							<th style="text-align: left;" width="10%">类型</th>
							<th width="15%">标题</th>
							<th width="20%">内容</th>
							<th style="text-align: left;" width="10%">添加时间</th>
							<th style="text-align: left;" width="8%">操作</th>
						</tr>

						<tr style="height: 28px" class="tdbg" align="left">
							<td colspan="13" align="left"
								style="color: Red; font-weight: bold;">未找到通知信息!</td>
						</tr>

					</table>
				</div>


			</div>
		</div>
	</div>
</body>
</html>
