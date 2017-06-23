<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href="index.jsp">首页</a>
			<code> &gt; </code>
			商品列表
		</div>
	</div>
	<div class="blank"></div>
	<div class="block clearfix">
		<div class="AreaL">
			<div id="category_tree">
				<div class="tit">商品分类</div>
				<s:iterator value="map.cateList">
					<dl>
						<dt>
							<a href="index/cate.action?id=${cateid }">${catename }</a>
						</dt>
					</dl>
				</s:iterator>
			</div>
		</div>
		<div class="AreaR">
			<div class="box">
				<div class="box_1">
					<h3>
						<span>商品列表</span>
					</h3>
					<div class="clearfix goodsBox"
						style="border: none; padding: 11px 0 10px 5px;">
						<s:iterator value="map.goodsList">
							<div class="goodsItem">
								<a href="index/detail.action?id=${goodsid }"><img
									src="${image1 }" alt="${goodsname }" class="goodsimg" /> </a> <br />
								<p>
									<a href="index/detail.action?id=${goodsid }"
										title="${goodsname }">${goodsname }</a>
								</p>
								<font class="shop_s">￥${price }元</font>
							</div>
						</s:iterator>
					</div>

				</div>
			</div>
			<div class="blank5"></div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
