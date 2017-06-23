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
<script type="text/javascript" src="themes/ecmoban_m182012/js/action.js"></script>
<script type="text/javascript"
	src="themes/ecmoban_m182012/js/mzp-packed-me.js"></script>
<script language="javascript" type="text/javascript"
	src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery-1.3.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/val.js" charset="utf-8"></script>
</head>

<body>
	&nbsp;
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href="index.jsp">首页</a>
			<code>&gt;</code>
			<a href="index/cate.action?id=${goods.cate.cateid }">${goods.cate.catename }</a>
			<code>&gt;</code>
			${goods.goodsname}
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
			<div id="goodsInfo" class="clearfix">
				<div class="imgInfo">
					<a href="" id="zoom1" class="MagicZoom MagicThumb"
						title="${goods.goodsname}"> <img src="${goods.image1}"
						alt="${goods.goodsname}" width="300px;" height="390px" />
					</a>
					<div class="blank5"></div>

					<div class="blank5"></div>

					<div class="picture" id="imglist">
						<a href="${goods.image1}" rel="zoom1" rev="${goods.image1}"
							title=""> <img src="${goods.image1}" alt="${goods.goodsname}"
							class="onbg" /></a> <a href="${goods.image2}" rel="zoom1"
							rev="${goods.image2}" title=""> <img src="${goods.image2}"
							alt="${goods.goodsname}" class="onbg" /></a> <a
							href="${goods.image3}" rel="zoom1" rev="${goods.image3}" title="">
							<img src="${goods.image3}" alt="${goods.goodsname}" class="onbg" />
						</a> <a href="${goods.image4}" rel="zoom1" rev="${goods.image4}"
							title=""> <img src="${goods.image4}" alt="${goods.goodsname}"
							class="onbg" />
						</a>

					</div>
				</div>

				<div class="textInfo">
					<form action="index/addcart.action" method="post"
						name="ECS_FORMBUY" id="ECS_FORMBUY">
						<div class="clearfix"
							style="font-size: 14px; font-weight: bold; padding-bottom: 8px;">
							${goods.goodsname}</div>
						<ul>
							<li class="clearfix">
								<dd>
									<strong>商品类型：</strong><a
										href="index/cate.action?id=${goods.cate.cateid }">${goods.cate.catename }</a>
								</dd>
							</li>
							<li class="clearfix">
								<dd>
									<input type="hidden" id="storage" value="${goods.storage }" /> <strong>商品库存：</strong>${goods.storage }
								</dd>
							</li>
							<li class="clearfix">
								<dd>
									<strong>商品销量：</strong>${goods.sellnum }
								</dd>
							</li>

							<li class="clearfix">
								<dd>

									<strong>上架时间：</strong>${goods.addtime }
								</dd>
							</li>
							<li class="clearfix">
								<dd>

									<strong>商品点击数：</strong>${goods.hits }
								</dd>
							</li>
							<li class="clearfix">
								<dd>
									<strong>售价：</strong><font class="shop" id="ECS_SHOPPRICE">￥${goods.price }元</font>
								</dd>
							</li>
							<li class="clearfix">
								<dd>
									<strong>购买数量：</strong> <input name="cart.num" type="text"
										id="number" value="1" size="4" style="border: 1px solid #ccc;" /><font id="acc" class="f1"></font>
								</dd>
							</li>
							<s:if test="goods.storage > 0 ">
							<s:if test="#session.role == '买家'">
								<li class="padd"><input name="cart.price" type="hidden"
									id="price" value="${goods.price }" /> <input
									name="cart.goodsid" type="hidden" id="price"
									value="${goods.goodsid }" /> <input type="image"
									src="themes/ecmoban_m182012/images/goumai2.gif" /></li>
							</s:if>
							</s:if>
						</ul>
					</form>
				</div>
			</div>
			<div class="blank"></div>


			<div class="box">
				<div class="box_1">
					<h3 style="padding: 0 5px;">
						<div id="com_b" class="history clearfix">
							<h2>商品描述</h2>
						</div>
					</h3>
					<div id="com_v" class="boxCenterList RelaArticle"></div>
					<div id="com_h">
						<blockquote>${goods.contents }</blockquote>
					</div>
				</div>
			</div>
			<div class="blank"></div>


			<div class="blank5"></div>
			<div id="ECS_COMMENT">
				<div class="box">
					<div class="box_1">
						<h3>
							<span class="text">用户评论</span>(共<font class="f1">${map.tsize }</font>条评论)
						</h3>
						<div class="boxCenterList clearfix" style="height: 1%;">
							<ul class="comments">
								<s:iterator value="map.topicList">
									<li class="word"><font class="f2">${users.username }</font>
										<font class="f3">( ${addtime } )</font> <br /> <img
										src="themes/ecmoban_m182012/images/stars${num }.gif" alt="" />
										<p>${contents }</p></li>
								</s:iterator>
							</ul>


							<div class="blank5"></div>
							<s:if test="#session.role == '买家'">
								<div class="commentsList">
									<form action="index/addTopic.action" method="post"
										id="commentForm">
										<table width="710" border="0" cellspacing="5" cellpadding="0">
											<tr>
												<td align="right">评价等级：</td>
												<td><input name="topic.num" type="radio" value="1"
													id="topic.num1" /> <img
													src="themes/ecmoban_m182012/images/stars1.gif" /> <input
													name="topic.num" type="radio" value="2" id="topic.num2" />
													<img src="themes/ecmoban_m182012/images/stars2.gif" /> <input
													name="topic.num" type="radio" value="3" id="topic.num3" />
													<img src="themes/ecmoban_m182012/images/stars3.gif" /> <input
													name="topic.num" type="radio" value="4" id="topic.num4" />
													<img src="themes/ecmoban_m182012/images/stars4.gif" /> <input
													name="topic.num" type="radio" value="5" checked="checked"
													id="topic.num5" /> <img
													src="themes/ecmoban_m182012/images/stars5.gif" /></td>
											</tr>
											<tr>
												<td align="right" valign="top">评论内容：</td>
												<td><textarea name="topic.contents" class="inputBorder"
														style="height: 50px; width: 620px;"></textarea> <input
													type="hidden" name="topic.goodsid"
													value="${goods.goodsid }" /></td>
											</tr>
											<tr>
												<td colspan="2"><input name="" type="submit"
													value="评论咨询" class="f_r bnt_blue_1"
													style="margin-right: 8px;" /></td>
											</tr>
										</table>
									</form>
								</div>
							</s:if>
						</div>
					</div>
				</div>
				<div class="blank5"></div>

			</div>
		</div>

	</div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
