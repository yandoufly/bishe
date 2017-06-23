<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>${title }</title>

	</head>

	<body class="index_body">
		<jsp:include page="header.jsp"></jsp:include>

		<div class="block clearfix">
			<div class="blank"></div>
			<div class="box clearfix">
				<div id="focus">
					<script type="text/javascript">
	var swf_width = 728;
	var swf_height = 337;
</script>
					<script type="text/javascript" src="data/flashdata/default/cycle_image.js"></script>
				</div>
				<div style="float: right; width: 240px">
					<div id="mallNews" class="  box_1">
						<h3>
							<span>新闻公告</span>
						</h3>
						<div class="NewsList tc  " style="border-top: none">
							<ul>
								<s:iterator value="map.articleList">
									<li>
										<a href="index/read.action?id=${articleid }">${title }</a>
									</li>
								</s:iterator>
							</ul>
						</div>
					</div>
					<div class="blank"></div>


					<div class="blank"></div>
					<div class="blank"></div>
				</div>
			</div>
			<div class="blank"></div>
			<!-- 循环开始 -->
			<s:iterator value="map.frontList">
				<div class="box  ">
					<div class="itemTit" id="itemHot">
						<div class="tit">
							<DIV class="f_l">
								${catename }
							</div>
							<div class="ss_class">
								<a href="index/cate.action?id=${cateid }">更多&gt;&gt;</a>
							</div>
						</div>
					</div>
					<div class="blank"></div>
					<div id="show_hot_area" class="clearfix">
						<!-- 循环开始 -->
						<s:iterator value="goodsList">
							<div class="goodsItem">
								<a href="index/detail.action?id=${goodsid }"><img src="${image1 }" alt="" class="goodsimg" /> </a>
								<br />
								<p class="f1">
									<a href="index/detail.action?id=${goodsid }" title="">${goodsname }</a>
								</p>
								<font class="f1">￥${price }元 </font>
							</div>
						</s:iterator>
					</div>
				</div>
				<div class="blank"></div>
			</s:iterator>

		</div>

		<div id="bottomNav" class="box">
			<div class="bNavList clearfix">
				<hr />
			</div>
		</div>
		<div class="blank"></div>

		<div class="blank"></div>


		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>
