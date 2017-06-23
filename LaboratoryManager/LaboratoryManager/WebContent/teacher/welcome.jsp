<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>老师主界面</title>
<link href="css/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="js/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="css/ks.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<%@ include file="/teacher/common/top.jsp"%>
	<div class="page">
		<div class="box mtop">
			<!-- 引入左边页面 -->
			<%@ include file="/teacher/common/left.jsp"%>
			<div class="rightbox">
				欢迎老师<font color="red">${user.account }</font> 登录
				
						   <div class="dhbg">
        <div class="dh1" style="margin: 0 27px 15px 0;">
            <div class="dhwz">
                <p>
                    实验室教学管理系统 <span class="red">老师登陆</span>
                </p>
                <p>
                    欢迎登陆 <span class="red">老师个人信息查询 </span>
                </p>
              
                <div class="btright">
                    <a href="${pageContext.request.contextPath }/teacher/showUI.jsp">
                        我的信息</a></div>
            </div>
        </div>
        <div class="ldh2">
            <div class="dhwz">
                <p>
                    实验室教学管理系统<span class="red">教师登陆</span> </p>
                    欢迎登陆 <span class="red">实验课表模块 </span>
                </p>
               
                <div class="btright">
                    <a href="${pageContext.request.contextPath}/teacher/course_listUI.action">
                       实验课表</a></div>
            </div>
        </div>
        <div class="ldh3" style="margin: 0 27px 15px 0;">
            <div class="dhwz">
                <p>
                      实验室教学管理系统<span class="red">教师登陆</span> </p>
                <p>
                    欢迎登陆 <span class="red">实验室预约模块 </span>  
                </p>
                
                <div class="btright">
                    <a href="${pageContext.request.contextPath}/teacher/takeAppointmentPage.action">
                        实验室预约</a></div>
            </div>
        </div>
        <div class="ldh4">
            <div class="dhwz">
                <p>
                    实验室教学管理系统<span class="blue">教师登陆</span> </p>
                    <p>
                    欢迎登陆 <span class="red">查看问题</span> </p>
                
                
                <div class="btright">
                    <a href="${pageContext.request.contextPath}/teacher/questionList.action">
                        查看问题</a></div>
            </div>
        </div>
    </div>
				
			</div>
		</div>
	</div>
</body>
</html>
