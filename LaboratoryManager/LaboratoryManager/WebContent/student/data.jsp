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
				<h2 class="mbx">学习中心 &gt; <a href="#">资料中心</a></h2>
				<div class="feilei"><a href="#"><strong>资料中心</strong></a></div>
				
				<input type="hidden" id="cValue" value="" /> 
				<input type="hidden" id="tValue" value="" />
				<div class="fllist">
					<ul>
						<li>
						<strong>科目：</strong>
						<a href="#" id="cAll" onclick='searchData("","c")'>全部</a> 
						<a href="#" id="8c7743e8-0818-41fa-bc86-44407ca2f773" onclick="searchData('8c7743e8-0818-41fa-bc86-44407ca2f773','c')">英语（二）</a> 
						<a href="#" id="e3d9b090-9465-44a1-887c-90d74f7f7899" onclick="searchData('e3d9b090-9465-44a1-887c-90d74f7f7899','c')">
								中国近现代史纲要</a> 
						<a href="#" id="f3b98347-fe96-49fc-b076-93bd5855341f"
							onclick="searchData('f3b98347-fe96-49fc-b076-93bd5855341f','c')">
								马克思主义基本原理概论</a> 
						<a href="#"
							id="30cfc816-fbc4-4b62-b688-9be0d7b29401"
							onclick="searchData('30cfc816-fbc4-4b62-b688-9be0d7b29401','c')">
								房地产法</a> 
						</li>
						<li><strong>类型：</strong>
							<a href="#" id="tAll" onclick="searchData('','t')">全部</a> 
							<a href="#" id="1" onclick="searchData('1','t')"> 复习资料</a> 
							<a href="#" id="2" onclick="searchData('2','t')"> 练习题</a> 
							<a href="#" id="3" onclick="searchData('3','t')"> 内部资料</a> 
							<a href="#" id="4" onclick="searchData('4','t')"> 真题</a>
						</li>
					</ul>
					<div class="cztable">
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							style="text-align: center;">
							<tr>
								<th width="6%">格式</th>
								<th style="padding-left: 20px;">资料名称</th>
								<th style="width: 15%; text-align: center;">资料类型</th>
								<th style="width: 15%; text-align: center;">更新时间</th>
								<th style="width: 15%; text-align: center;">操作</th>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">英语二</td>
								<td>复习资料</td>
								<td>2014-04-11</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/19b4ca24-e7a2-48f0-9ee6-7808631b5c23.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/default.jpg' /></td>
								<td class="xxleft">环境法学</td>
								<td>复习资料</td>
								<td>2013-09-30</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/fe3218c5-855f-4d7f-a073-5f2c713bea26.xls"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">英语2</td>
								<td>复习资料</td>
								<td>2013-09-29</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/f854d888-3225-4d1b-b6db-602aa7166971.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>
						</table>
						<div class='MainStyle'>
							<div class=''>
								<a
									href='http://sm.zk0731.com/OnlineTeaching/StudentMaterial.aspx?page=1'
									target='_self'>首页</a>
							</div>
							<div class=''>
								<a href='javascript:void(0)' target='_self'>上一页</a>
							</div>
							<div class='NowItemStyle'>
								<a href='javascript:void(0)' target='_self'>1</a>
							</div>
							<div class=''>
								<a
									href='http://sm.zk0731.com/OnlineTeaching/StudentMaterial.aspx?page=2'
									target='_self'>2</a>
							</div>
							<div class=''>
								<a
									href='http://sm.zk0731.com/OnlineTeaching/StudentMaterial.aspx?page=3'
									target='_self'>3</a>
							</div>
							<div class=''>
								<a
									href='http://sm.zk0731.com/OnlineTeaching/StudentMaterial.aspx?page=2'
									target='_self'>下一页</a>
							</div>
							<div class=''>
								<a
									href='http://sm.zk0731.com/OnlineTeaching/StudentMaterial.aspx?page=3'
									target='_self'>尾页</a>
							</div>
							<div class=''>
								总共<b>44</b>条数据
							</div>
							<div class=''>
								每页<b>20</b>条数据
							</div>
							<div class=''>
								<b>1</b>/3
							</div>
							<div class='SearchStyle'>
								<input type='text' id='john_Page_Search'
									onkeydown="if(event.keyCode == 13){page_searchIndex();}" />
							</div>
							<div class=''>
								<input type='button' value='Go' onclick="page_searchIndex()" />
							</div>
						</div>
						
					</div>
				</div>

			</div>
		</div>
		<div class="footer">
			<p>&copy;copyright 2012 广博教育 csgb.net 版权所有 站长统计</p>
		</div>
	</div>
</body>
</html>
