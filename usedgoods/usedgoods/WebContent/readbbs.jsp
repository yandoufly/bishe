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
<link href="css/style.css" rel="stylesheet" type="text/css" />

</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href="<%=basePath%>">首页</a>
			<code> &gt; </code>
			留言区
		</div>
	</div>
	<div class="blank"></div>
	<div class="block">
		<div class="box">
			<div class="t t2">
				<table cellspacing="0" cellpadding="0" width="100%" align="center">
					<tbody>
						<tr>
							<td class="h">--&gt; <b>本页主题:</b>${map.bbs.title }
							</td>
							<td class="h" style="text-align: right;"></td>
						</tr>
					</tbody>
				</table>
				<table cellspacing="0" cellpadding="0" width="100%" align="center">
					<tr class="tr1 do_not_catch">
						<th width="20%" rowspan="2" class="r_two"><font
							color="#000066" face="Gulim"><b>${map.bbs.users.username }</b>
						</font>
							<div style="padding: 10px 0;">
								<table width="98%" cellspacing="0" cellpadding="0"
									style="border: 0">
									<tr>
										<td class="tac" style="overflow: hidden; border: 0;"><img
											src="pic/1.jpg" width="170" height="200" border="0" /></td>
									</tr>
								</table>
							</div></th>
						<th height="100%" valign="top"
							style="padding: 5px 15px 0 15px; border: 0; width: 80%; overflow: hidden">
							<table width="100%" align="center" cellspacing="0"
								cellpadding="0" style="WORD-WRAP: break-word; height: 100%;">
								<tr style="height: 100%">
									<td bgcolor="" valign="top">
										<div class="tiptop"></div>
										<h4>${map.bbs.title }</h4>
										<div class="tips" style="width: auto"></div>
										<div class="c"></div> <br />
										<div class="tpc_content do_not_catch">${map.bbs.contents }
										</div>
									</td>
								</tr>
							</table>
						</th>
					</tr>
					<tr class="tr1">
						<th style="vertical-align: bottom; padding-left: 1.5%; border: 0">
							<div class="tipad">
								<span style="float: right"> </span> 发布日期:${map.bbs.addtime }
							</div>
						</th>
					</tr>
				</table>
			</div>
			<s:iterator value="map.rebbsList" id="list">
				<div class="t t2">
					<table cellspacing="0" cellpadding="0" width="100%" align="center">
						<tr class="tr1 do_not_catch">
							<th width="20%" rowspan="2" class="r_two"><font
								color="#000066" face="Gulim"><b>${users.username }</b> </font>
								<div style="padding: 10px 0;">
									<table width="98%" cellspacing="0" cellpadding="0"
										style="border: 0">
										<tr>
											<td class="tac" style="overflow: hidden; border: 0;"><img
												src="pic/1.jpg" width="170" height="200" border="0" /></td>
										</tr>
									</table>
								</div></th>
							<th height="100%" valign="top"
								style="padding: 5px 15px 0 15px; border: 0; width: 80%; overflow: hidden">
								<table width="100%" align="center" cellspacing="0"
									cellpadding="0" style="WORD-WRAP: break-word; height: 100%;">
									<tr style="height: 100%">
										<td bgcolor="" valign="top">
											<div class="tiptop"></div>
											<div class="tips" style="width: auto"></div>
											<div class="c"></div> <br />
											<div class="tpc_content do_not_catch">${contents }</div>
										</td>
									</tr>
								</table>
							</th>
						</tr>
						<tr class="tr1">
							<th style="vertical-align: bottom; padding-left: 1.5%; border: 0">
								<div class="tipad">
									<span style="float: right"> </span> 回复日期:${addtime }
								</div>
							</th>
						</tr>
					</table>
				</div>
			</s:iterator>

			<s:if test="#session.userid != null">
				<form method="post" action="index/repeat.action">
					<div class="t">
						<table cellpadding="0" cellspacing="0" align="center">
							<tbody>
								<tr>
									<td class="h" colspan="3"><b>回复帖子</b></td>
								</tr>
							</tbody>
							<tbody>
								<tr class="tr3 f_two">
									<th width="20%" class="t_one"><b>内容</b></th>
									<th colspan="2">
										<div class="wysiwyg"
											style="padding: 0x; border: 1px solid #DDDDDD; margin-bottom: 5px;">
											<textarea cols="80" id="contents" name="rebbs.contents"
												rows="10">在此添加内容</textarea>
											<script type="text/javascript">
												CKEDITOR.replace('contents', {
													language : 'zh-cn'
												});
											</script>
											<input type="hidden" name="rebbs.bbsid" style="width: 160px"
												id="title" value="${map.bbs.bbsid }" />
										</div>
									</th>
								</tr>
							</tbody>
						</table>
					</div>
					<div style="margin: 15px 0 15px 0; text-align: center;">
						<input class="btn" type="submit" value="提 交" name="Submit"
							tabindex="3" />
					</div>
				</form>
			</s:if>

		</div>
		<div class="blank5"></div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
