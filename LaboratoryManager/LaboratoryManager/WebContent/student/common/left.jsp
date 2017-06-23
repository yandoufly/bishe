<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="leftbox">
	<div class="l_nav2">
		<div class="ta1">
			<strong>个人中心</strong>
			<div class="leftbgbt"></div>
		</div>
		<div class="cdlist">
			<div><a href="${pageContext.request.contextPath}/student/showUI.jsp">我的信息</a></div>
			
		</div>
					
		<div class="ta1">
			<strong>教务中心</strong>
			<div class="leftbgbt2"></div>
		</div>
		<div class="cdlist">
			<div><a href="${pageContext.request.contextPath}/student/courseChoosePage.action">实验选课</a></div>
			<div><a href="${pageContext.request.contextPath}/student/courseHasPage.action">已选课程</a></div>
			<div><a href="${pageContext.request.contextPath}/student/scoreQuery.action">成绩查询</a></div>
			<div><a href="${pageContext.request.contextPath}/student/addQuestion.jsp">提出问题</a></div>
			<div><a href="${pageContext.request.contextPath}/student/questionList.action">查看问题</a></div>
			<div><a href="${pageContext.request.contextPath}/student/teachEvaluat.action">课程评教</a></div>
		</div>
		
		<div class="cdlist"></div>
		<div class="ta1">
			<a href=""><strong></strong></a>
			<div class="leftbgbt2"></div>
		</div>
	</div>
</div>