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
	<!-- 引入头部页面 -->
	<%@ include file="./common/top.jsp"%>
	<div class="page">
		<div class="box mtop">
			<!-- 引入左边页面 -->
			<%@ include file="./common/left.jsp"%>
			<div class="rightbox">

				<h2 class="mbx">
					教务中心 &gt; <a href="#">上传报告</a>
				</h2>
				<div class="feilei">
					<a href="#"><strong>教务中心</strong></a>
				</div>
				<input type="hidden" id="cValue" value="" /> <input type="hidden"
					id="tValue" value="" />
				<div class="fllist">

					<div class="cztable">
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							style="text-align: center;">
							<tr>
								<th width="6%">格式</th>
								<th style="padding-left: 20px;">报告名称</th>
								<th style="width: 15%; text-align: center;">报告类型</th>
								<th style="width: 15%; text-align: center;">上传时间</th>
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
								<td><img src='../Images/FileIco/default.jpg' /></td>
								<td class="xxleft">行政诉讼法</td>
								<td>复习资料</td>
								<td>2013-09-30</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/47fd23d7-b9be-4d32-8e90-8ee291758ba3.xls"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/default.jpg' /></td>
								<td class="xxleft">行政诉讼法</td>
								<td>复习资料</td>
								<td>2013-09-30</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/cdb01c24-8893-4722-b3a7-7ba094db9c18.xls"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">税法原理</td>
								<td>复习资料</td>
								<td>2013-09-30</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/c8da4780-4813-4f4e-bc2e-3fa9c7ad8b98.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">税法原理</td>
								<td>复习资料</td>
								<td>2013-09-30</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/446a67aa-53b5-4b17-87dc-d458b769b382.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">企业与公司法</td>
								<td>复习资料</td>
								<td>2013-09-30</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/9638b66a-1591-46b7-9115-874d2c072a00.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">行政诉讼法</td>
								<td>练习题</td>
								<td>2013-09-29</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/5d7dc4d4-02c0-4702-86b7-4ccb1d39735b.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">环境法学</td>
								<td>复习资料</td>
								<td>2013-09-29</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/a6c6912d-eb68-4e3b-8fd1-02d773b46f0c.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">房地产法</td>
								<td>复习资料</td>
								<td>2013-09-29</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/78914634-6280-4962-b878-62d9101db368.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">房地产法</td>
								<td>复习资料</td>
								<td>2013-09-29</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/d08d2755-4429-4034-a083-89c62c0f665f.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">房地产法</td>
								<td>复习资料</td>
								<td>2013-09-29</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/d6292a5c-2d0d-4065-ae6e-0d0fa541568d.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">中国近现代史纲要</td>
								<td>复习资料</td>
								<td>2013-09-29</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/8ac28be9-5178-4c13-b39d-d5a242577fe0.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">中国近现代史纲要</td>
								<td>复习资料</td>
								<td>2013-09-29</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/a97d11e6-ac3d-44fe-aefe-263a5b7b957d.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">中国近现代史纲要</td>
								<td>复习资料</td>
								<td>2013-09-29</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/6b246260-a817-4f56-91cf-61936d5a3f0c.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">英语2</td>
								<td>复习资料</td>
								<td>2013-09-29</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/88db3182-6abd-4ead-8ce7-732b2d5ce2c1.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">英语2</td>
								<td>复习资料</td>
								<td>2013-09-29</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/5e093a1c-68ea-446b-8e0e-0eb6f8e6978b.doc"
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

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">英语2</td>
								<td>复习资料</td>
								<td>2013-09-29</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/85a262b0-ee1d-4d24-a427-1924516db646.doc"
									target="_blank"> <img src="../Images/down.gif" alt="点击下载" /></a>
								</td>
							</tr>

							<tr>
								<td><img src='../Images/FileIco/doc.gif' /></td>
								<td class="xxleft">英语2</td>
								<td>复习资料</td>
								<td>2013-09-29</td>
								<td><a
									href="http://admin.zk0731.com/StudentData/201309/e026512a-6c44-4dad-a2f7-b517079ce2b8.doc"
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
						<script>
							function page_searchIndex() {
								var searchText = document
										.getElementById('john_Page_Search');
								var searchIndex = searchText != null
										&& searchText.value != '' ? parseInt(searchText.value)
										: 0;
								if (searchIndex > 0 && searchIndex <= 3) {
									window.location = 'StudentMaterial.aspx?page='
											+ searchIndex;
								} else {
									alert('需要跳转的页码不能超出范围！');
								}
							}
						</script>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
