<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<div class="leftbox">
	<div class="l_nav2">
		<div class="ta1">
			<strong>个人中心</strong>
			<div class="leftbgbt"></div>
		</div>
		<div class="cdlist">
			<div><a href="${pageContext.request.contextPath}/teacher/showUI.jsp">我的信息</a></div>
			
		</div>
		
		<div class="ta1">
			<strong>教务中心</strong>
			<div class="leftbgbt2"></div>
		</div>
		<div class="cdlist">
			<div><a href="${pageContext.request.contextPath }/teacher/course_addUI.action">新增课程</a></div>
			<div><a href="${pageContext.request.contextPath}/teacher/course_listUI.action">实验课表</a></div>
			<div><a href="${pageContext.request.contextPath}/teacher/takeAppointmentPage.action">实验室预约</a></div>
			<div><a href="${pageContext.request.contextPath}/teacher/questionList.action">查看问题</a></div>
			<div><a href="${pageContext.request.contextPath}/teacher/lookEvaluation.action">查看评教</a></div>
		</div>
		
		<div class="ta1">
			<div class="leftbgbt2"></div>
		</div>
	</div>
</div>
