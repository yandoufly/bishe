<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员主界面</title>
<link href="css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="css/ks.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<%@ include file="/admin/common/top.jsp"%>
	<div class="page">
		<div class="box mtop">
			<!-- 引入左边页面 -->
			<%@ include file="/admin/common/left.jsp"%>
			<div class="rightbox">
				欢迎管理员<font color="red">${user.account }</font> 登录
				
				   <div class="dhbg">
        <div class="dh1" style="margin: 0 27px 15px 0;">
            <div class="dhwz">
                <p>
                    实验室教学管理系统 <span class="red">管理员登陆</span>
                </p>
                <p>
                    欢迎登陆 <span class="red">管理员个人信息查询 </span>
                </p>
              
                <div class="btright">
                    <a href="${pageContext.request.contextPath }/admin/showUI.jsp">
                        我的信息</a></div>
            </div>
        </div>
        <div class="gdh2">
            <div class="dhwz">
                <p>
                    实验室教学管理系统<span class="red">管理员登陆</span> </p>
                    欢迎登陆 <span class="red">用户列表模块 </span>
                </p>
               
                <div class="btright">
                    <a href="${pageContext.request.contextPath }/admin/user_listUI.action">
                       用户列表</a></div>
            </div>
        </div>
        <div class="gdh3" style="margin: 0 27px 15px 0;">
            <div class="dhwz">
                <p>
                      实验室教学管理系统<span class="red">管理员登陆</span> </p>
                <p>
                    欢迎登陆 <span class="red">实验室列表模块 </span>  
                </p>
                
                <div class="btright">
                    <a href="${pageContext.request.contextPath }/admin/classroom_listUI.action">
                        实验室列表</a></div>
            </div>
        </div>
        <div class="gdh4">
            <div class="dhwz">
                <p>
                    实验室教学管理系统<span class="blue">管理员登陆</span> </p>
                    <p>
                    欢迎登陆 <span class="red">预约管理</span> </p>
                
                
                <div class="btright">
                    <a href="${pageContext.request.contextPath }/admin/appointment_listUI.action">
                        预约管理</a></div>
            </div>
        </div>
    </div>
				
				
			</div>
		</div>
	</div>
</body>
</html>
