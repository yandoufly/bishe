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
<%@ include file="./common/top.jsp" %>
<div class="page">
<div class="box mtop">
<!-- 引入左边页面 -->
<%@ include file="./common/left.jsp" %>
	<div class="rightbox">
		<h2 class="mbx">我的信息 &gt; 通知</h2>
		<div class="morebt">
		<ul id="ulStudMsgHeadTab">
		    <li><a class="tab2" onclick="" href="../../MyInfo/Index.aspx.html">个人资料</a> </li>
		    <li><a class="tab2" onclick="" href="../../MyInfo/s_class.html">班级信息</a></li>
		    <li><a class="tab2" onclick="" href="s_Msg.html">通知<span style="color:#ff0000; padding-left:5px;" id="unreadSysMsgCount"></span></a></li>
		</ul>
		</div>
		<div class="cztable">
			<div id="showMyImg" style="height: 400px; width: 650px;"></div>
		</div>
	</div>
</div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/echarts.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('showMyImg'));

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: ''
        },
        tooltip: {},
        legend: {
            data:['实验教学内容是否满意？','实验老师授课感觉怎样？','实验难度大吗？','实验安排感觉合理吗？','实验老师会布置课后实验任务吗？', '实验老师会帮助解答实验中的疑问吗？']
        },
        xAxis: {
            type : 'category',
            data : ['满意','一般','不好']
        },
        yAxis: {},
        series: [
        	{
            name:'实验教学内容是否满意？',
            type:'bar',
            data:[]
        },
        {
            name:'实验老师授课感觉怎样？',
            type:'bar',
            data:[]
        },
        {
            name:'实验难度大吗？',
            type:'bar',
 
            data:[]
        },
        {
            name:'实验安排感觉合理吗？',
            type:'bar',
            data:[]
        },
        {
            name:'实验老师会布置课后实验任务吗？',
            type:'bar',
            data:[]
        },
        {
            name:'实验老师会帮助解答实验中的疑问吗？',
            type:'bar',
            stack: '搜索引擎',
            data:[]
        }
        ]
    };
    console.log(option);
 	
    
    $(function(){
		alert("sxsx");
		$.ajax({
		  type: 'POST',
		  dataType:'json',
		  url: "${pageContext.request.contextPath}/teacher/findEvaluation.action",
		  success: function(data2){
			  alert(data2[1]);
			  option.series[0].data = data2[0];
			  option.series[1].data = data2[1];
			  option.series[2].data = data2[2];
			  option.series[3].data = data2[3];
			  option.series[4].data = data2[4];
			  option.series[5].data = data2[5];
			  
			  myChart.setOption(option);
		  }
		});
	});
</script>
  </body>
</html>
