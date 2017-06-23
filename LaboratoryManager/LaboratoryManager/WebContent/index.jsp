<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>桂电首页</title>
<link rel="stylesheet" type="text/css" href="css/css.css" />
</head>


<body>
<div id="header" > <img src="images/img/logo.gif" alt="logo" />
  	 <div class="nav">
       <script>
					function menu(obj) {
					document.getElementById("gk").style.display = "none";
					document.getElementById("xk").style.display = "none";
					document.getElementById("rc").style.display = "none";					
					document.getElementById(obj).style.display = "block";
				}
		</script>
     	<div class="nav-1">
    		<ul>
                  <li><a onmouseover="menu('gk')"; href="#">学校概况</a></li>
                  <li><a href="#">师资队伍</a></li>
                  <li><a href="#">科学研究</a></li>
                  <li><a onmouseover="menu('xk')"; href="#">人才培养</a></li>
                  <li><a href="#">科学建设</a></li>
                  <li><a href="#">质量工程</a></li>
                  <li><a href="#">广纳英才</a></li>
                  <li><a href="#">国际交流</a></li>
                  <li><a href="#">图书馆</a></li>
                  <li><a onmouseover="menu('rc')"; href="#">网上办公</a></li>
                  <li><a href="#">招生就业</a></li>
        </ul>
    	</div>
        <div class="nav-2">
        	<div id="gk">
            	<a href="#">学校简介</a>| 
                <a href="#">历前沿革</a>| 
                <a href="#">学校领导</a>| 
                <a href="#">组织机构</a>| 
                <a href="#">校园风光</a>|
            </div>
            <div id="xk">
            	<a href="#">本科教育</a>| 
                <a href="#">研究生教育</a>| 
                <a href="#">高职教育</a>| 
                <a href="#">成长教育</a>| 
                <a href="#">信息科技学院</a>| 
                <a href="#">MBA教育</a>
            </div>
            <div id="rc">
            	<a href="#">党政文件公布</a>| 
                <a href="#">校内通知</a>| 
                <a href="#">会议通知</a>| 
                <a href="#">本科教务系统</a>| 
                <a href="#">研究生教务系统</a>| 
                <a href="#">国际学院教务系统</a>| 
                <a href="#">数字化校园</a>| 
                <a href="#">学风建设</a>
            </div>         
        </div>
 	 </div>
</div>
<div id="content">
  <div class="mail"> 
    <img class="mail-img" src="images/img/emil_img.gif" alt="email" />
	
    <div class="fom">
      <form action="${pageContext.request.contextPath}/login.action" method="post">
       
        <span class="span2">账号:</span>
        <input type="text" size="9" maxlength="20" name="user.account">
        <br />
        <span class="span2">密码:</span>
        <input type="password" size="9"  name="user.password">
        <input type="submit" value="登录">
        <br />
      </form>
    </div>
    <div class="fom1"> <img  class="dw2010" src="images/img/dw201010.jpg" /><br />
      <img class="dwnext"  src="images/img/欢迎报考研究生1.jpg" /> </div>
  </div>
  <div class="center">
   	 <div class="cimg"> <img class="tc" src="images/img/tc_img.gif" />
      		<pre>    <span class="span3">2012年10月12日</span> <sapn class="span4">星期六</span>  </pre>
   	 </div>
     <div class="cright" > 
    	<img class="img-right" src="images/img/TempFlash05.jpg" /> 
        <img class="tiao" src="images/img/tiao.jpg" /> 
     </div>
  </div>
  <div class="c-right"> 
  		<img class="img1" src="images/img/gg_img.gif" /> 
        <!-- <img class="img2" src="img/gg-img.jpg" /> 	-->
       	<div class="news-scroll">
        	<marquee class="marquee"direction="up"  bihavior="scroll" scrollamount="2" onmouseover=this.stop() onmouseout=this.start() >
            	<div class="new2-content">
                		<a href="#"><span class="smallDotBlue">●</span>
                         <span class="date-text">关于召开安全稳定工作会议的通知 (2012-10-21)</span>
                        </a>
                </div>
                <div class="new2-content">
                	<a href="#"><span class="smallDotBlue">●</span>
                        <span class="date-text"> 关于征求《关于全面提高教育质量振兴广西高等教育的若干意》、
                               《广西振兴高等教育重点建设工程及实施方案》修改意见的通知 (2012-10-19)
                         </span>
                     </a>
                </div>
                <div class="new2-content">
                		<a href="#"><span class="smallDotBlue">●</span>
                         <span class="date-text"> 关于提交部分副职岗位竞聘个人材料的通知 (2012-10-18)</span>
                        </a>
                </div>
                <div class="new2-content">
                		<a href="#"><span class="smallDotBlue">●</span>
                         <span class="date-text"> 关于下半年女教职工妇女疾病体检的通知 (2012-10-18)</span>
                        </a>
                </div>
                <div class="new2-content">
                		<a href="#"><span class="smallDotBlue">●</span>
                         <span class="date-text"> 关于2012年度仪器设备报废报损工作的通知 (2012-10-18)</span>
                        </a>
                </div>
                <div class="new2-content">
                		<a href="#"><span class="smallDotBlue">●</span>
                         <span class="date-text"> 西校区新建教职工住宅小区装修须知 (2012-10-18)</span>
                        </a>
                </div>                
                 <div class="new2-content">
                		<a href="#"><span class="smallDotBlue">●</span>
                         <span class="date-text"> 我校2011-2012学年度国家奖学金推荐名单公示  (2012-10-17)</span>
                        </a>
                </div>
                <div class="new2-content">
                		<a href="#"><span class="smallDotBlue">●</span>
                         <span class="date-text">  关于召开学校创先争优活动总结表彰大会的通知 (2012-10-17)</span>
                        </a>
                </div>
                <div class="new2-content">
                		<a href="#"><span class="smallDotBlue">●</span>
                         <span class="date-text">  桂林电子科技大学工程造价咨询候选单位招标公告 (2012-10-16)</span>
                        </a>
                </div>             
            </marquee>
            <span class="more"><a href="#">more...</a></span>
        </div>
  </div>
</div>
<div class="content">
	<div class="sc">
    	<div class="sc1">
        	<img src="images/img/server_img.gif" />
        </div>
        <div class="sc2">
        <p>桂电要闻</p>
        </div>
        <div class="sc3">
        	<img src="images/img/lj_img.gif" />
        </div>
    </div>
    <div class="new">
    	<div class="new1">
        	<ul class="ul-1">
            	<li><a class="spe" href="#">第二频道</a></li>
                <li><a href="#"><pre class="FTP">桂电 FTP</pre></a></li>                
                <li><a href="#">网络服务</a></li>                
                <li><a href="#">学籍查询</a></li>                
                <li><a href="#">电话查询</a></li>                         
                <li><a class="spe" href="#">校内通知</a></li>              
            </ul>
            <ul class="ul-2">
            	<li><a class="spe" href="#">高算中心</a></li>
                <li><a href="#">培训认证</a></li>
                <li><a href="#">设备共享</a></li>
                <li><a href="#">邮箱申请</a></li>
                <li><a href="#">心理测试</a></li>
                <li><a class="spe" href="#">会议通知</a></li>
            </ul>
            <div class="new1-1">
            <input  class="sch-form" type="text"  />
            <button class="sch-button">校内搜</button>
            <span class="span5">校长信箱:xzxx@guet.edu.cn</span>
            <a href="#"><img class="jiefang" src="images/img/解放2.jpg" /></a>
            </div>                    
    	</div>
    	<div class="new2">       	
 			          <div class="new2-content">
                	<a href="#" title="自治区专家组来校检查指导申博建设工作（图）">
                    	<span class="smallDotBlue">■</span>
                		<span class="date-text">(2012-10-18)</span>
                		<span class="date-text" >自治区专家组来校检查指导申博建设工作（图）</span>
                	</a>
                </div>
                <div class="new2-content">
                	<a href="#" title="自治区高校纪工委到我校检查"三重一大"制度和《信访条例》落实情况（图）"">
                    	<span class="smallDotBlue">■</span>
                    	<span class="date-text">(2012-10-17)</span>
                    	<span class="date-text">自治区高校纪工委到我校检查"三重一大"制度和《信访条例》落实情况（图）</span>
                    </a>
                </div>
                <div class="new2-content">
                	<a href="#" title="我校古天龙副校长被自治区政府聘任为自治区政府参事">
                    	<span class="smallDotBlue">■</span>
                		<span class="date-text">(2012-10-17)</span>
                		<span class="date-text">我校古天龙副校长被自治区政府聘任为自治区政府参事</span>
                	</a>
                </div>
                <div class="new2-content">
                	<a href="#" title="第七届智能信息处理国际会议（IIP 2012）在桂林召开（图）">
                    	<span class="smallDotBlue">■</span>
                		<span class="date-text">(2012-10-17)</span>
                		<span class="date-text">第七届智能信息处理国际会议（IIP 2012）在桂林召开（图）</span>
                	</a>
                </div>
                <div class="new2-content">
                	<a href="#" title="唐善茂书记、周怀营校长赴西安电子科技大学访问（图）">
                    	<span class="smallDotBlue">■</span>
                		<span class="date-text">(2012-10-15)</span>
                		<span class="date-text">唐善茂书记、周怀营校长赴西安电子科技大学访问（图）</span>
                	</a>
                </div>
                <div class="new2-content">
                	<a href="#" title="2012年中国生物医学工程高层论坛在校举行（图）">
                   	 	<span class="smallDotBlue">■</span>
                		<span class="date-text">(2012-10-15)</span>
               		 	<span class="date-text">2012年中国生物医学工程高层论坛在校举行（图）</span>
                	</a>
                </div>
                <div class="new2-content">
                	<a href="#" title='"培育大学文化，创新人才培养"——校党委唐善茂书记为第二期青干班学员授课（图）'>
                    	<span class="smallDotBlue">■</span>
                		<span class="date-text">(2012-10-14)</span>
                		<span class="date-text">"培育大学文化，创新人才培养"——校党委唐善茂书记为第二期青干班学员授课（图）
                    	</span>
                	</a>
                </div>
                <div class="new2-content">
                	<a href="#" title="我校举行西校区教职工住宅小区交房仪式（图）">
                    	<span class="smallDotBlue">■</span>
                		<span class="date-text">(2012-10-13)</span>
                		<span class="date-text">我校举行西校区教职工住宅小区交房仪式（图）</span>
                	</a>
                </div>
                <div class="new2-content">
                	<a href="#" title="广西艺术学院李沛新副书记一行来访我校（图）">
                    	<span class="smallDotBlue">■</span>
                		<span class="date-text">(2012-10-12)</span>
                		<span class="date-text">广西艺术学院李沛新副书记一行来访我校（图）</span>
                	</a>
                </div>
                <div class="new2-content">
                	<a href="#" title="我校西校区教职工住宅小区Ⅱ标段顺利通过竣工验收（图）">
                    	<span class="smallDotBlue">■</span>
                		<span class="date-text">(2012-10-12)</span>
                		<span class="date-text">我校西校区教职工住宅小区Ⅱ标段顺利通过竣工验收（图）</span>
                	</a>
                </div>  
                <div class="more"><a href="#">more...</a></div>        
    	</div>
    	<div class="new3">
        	<!--范例<form>
        	<select name="院系导航" class="sele">
                 <option value="#" selected>校内导航 -------------</option>
                 <option value="http://dept1.guet.edu.cn/">机电工程学院</option>
                 <option value="http://dept2.guet.edu.cn/">信息与通信学院</option>
                 <option value="http://dept3.guet.edu.cn/">计算机科学与工程学院</option>
                 <option value="http://design.guet.edu.cn">艺术与设计学院</option>
                 <option value="http://w5.guet.edu.cn/dept5/">商学院</option>
                 <option value="http://w3.guet.edu.cn/dept6/">外国语学院</option>
                 <option value="http://w3.guet.edu.cn/dept7/index.htm">数学与计算科学学院</option>
                 <option value="http://w3.guet.edu.cn/dept8/">电子工程与自动化学院</option>
                 <option value="http://w3.guet.edu.cn/dept9/">法学院</option>
                 <option value="http://w3.guet.edu.cn/dept10/">材料科学与工程学院</option>
                 <option value="http://w3.guet.edu.cn/dept12/">生命与环境科学学院</option>
                 <option value="http://international.guet.edu.cn/">国际学院</option>
                 <option value="http://w5.guet.edu.cn/jxsjb/">教学实践部</option>
                 <option value="http://szb.myclub2.net/">思政部</option>
                 <option value="http://w5.guet.edu.cn/tiyubu/">体育部</option>
                 <option value="http://cjy2.guet.edu.cn/">成人教育学院</option>
                 <option value="http://w3.guet.edu.cn/yykjxy/">应用科技学院</option> 
                 <option value="http://iit.guet.edu.cn/">信息科技学院</option>
                 <option value="http://w3.guet.edu.cn/gz/">职业技术学院</option>
                 <option value="http://w5.guet.edu.cn/gdfz/">附属外语实验中学</option>
                 <option value="http://w3.guet.edu.cn/mathmodel">数学建模</option>
                  <option value="http://w3.guet.edu.cn/junyuetuan/">大学生军乐团</option> 
                 <option value="http://w3.guet.edu.cn/xueshenghui/">学生会</option>
                 <option value="http://w3.guet.edu.cn/baomi">保密工作网</option>
                 <option value="http://w3.guet.edu.cn/graduate/2003new/yanjiusheng/index.asp">研究生会</option>
                 <option value="http://w3.guet.edu.cn/robotcenter/">机器人中心</option>
                 <option value="http://w3.guet.edu.cn/gled/">电子设计训练基地</option>
                 <option value="http://w3.guet.edu.cn/wbgo/">电子科学与技术实验中心</option>
                 <option value="http://w3.guet.edu.cn/qrs">嵌入式系统训练基地</option>
                 <option value="http://exp.gliet.edu.cn/article/qgzxzx/Index.html">勤工助学中心</option>
                  <option value="http://w3.guet.edu.cn/rkxyjs">软科学研究所</option>
                 <option value="http://w3.guet.edu.cn/stlhh">社团联合会</option>
                 <option value="http://w3.guet.edu.cn/chorus">大学生艺术团</option>
                <option value="http://w3.guet.edu.cn/xyzh">桂电校友网</option>
                 <option value="http://w3.guet.edu.cn/phylab/Default.asp">物理实验中心</option>
                 <option value="http://w3.guet.edu.cn/clab/">通信实验中心</option>
                 <option value="http://w3.guet.edu.cn/leifeng/">雷锋网</option>
                 <option value="http://w3.guet.edu.cn/freescale/">飞思卡尔应用研究中心</option>
                 <option value="http://w3.guet.edu.cn/gcxl/">机电综合工程训练中心</option>
                 <option value="http://w3.guet.edu.cn/kloic/">信息与通讯技术重点实验室</option>
                 <option value="http://kxrj.guet.edu.cn/">广西可信软件重点实验室</option>
                 <option value="http://iics.guet.edu.cn/">集成电路与系统研究所</option>
                 <option value="http://mba.guet.edu.cn/">MBA教育中心</option>
                 <option value="http://w3.guet.edu.cn/sjkx/">数据科学与社会计算研究中心</option>
            </select>
        </form>
       -->
        	<form>
            <select size="1" class="selec">
            	<option value="#" selected>校内导航 -------------</option>
                <option value="#">机电工程学院</option>
                <option value="#">信息与通信学院</option>
                <option value="#">计算机科学与工程学院</option>
                <option value="#">艺术与设计学院</option>
                <option value="#">商学院</option>
                <option value="#">外国语学院</option>
                <option value="#">数学与计算科学学院</option>
                <option value="#">电子工程与自动化学院</option>
                <option value="#">法学院</option>
                <option value="#">材料科学与工程学院</option>
                <option value="#">生命与环境科学学院</option>
                <option value="http://w3.guet.edu.cn/dept7/index.htm">数学与计算科学学院</option>
                 <option value="http://w3.guet.edu.cn/dept8/">电子工程与自动化学院</option>
                 <option value="http://w3.guet.edu.cn/dept9/">法学院</option>
                 <option value="http://w3.guet.edu.cn/dept10/">材料科学与工程学院</option>
                 <option value="http://w3.guet.edu.cn/dept12/">生命与环境科学学院</option>
                 <option value="http://international.guet.edu.cn/">国际学院</option>
                 <option value="http://w5.guet.edu.cn/jxsjb/">教学实践部</option>
                 <option value="http://szb.myclub2.net/">思政部</option>
                 <option value="http://w5.guet.edu.cn/tiyubu/">体育部</option>
                 <option value="http://cjy2.guet.edu.cn/">成人教育学院</option>
                 <!-- <option value="http://w3.guet.edu.cn/yykjxy/">应用科技学院</option> -->
                 <option value="http://iit.guet.edu.cn/">信息科技学院</option>
                 <option value="http://w3.guet.edu.cn/gz/">职业技术学院</option>
                 <option value="http://w5.guet.edu.cn/gdfz/">附属外语实验中学</option>
                 <option value="http://w3.guet.edu.cn/mathmodel">数学建模</option>
                 <!-- <option value="http://w3.guet.edu.cn/junyuetuan/">大学生军乐团</option> -->
                 <option value="http://w3.guet.edu.cn/xueshenghui/">学生会</option>
                 <option value="http://w3.guet.edu.cn/baomi">保密工作网</option>
                 <option value="http://w3.guet.edu.cn/graduate/2003new/yanjiusheng/index.asp">研究生会</option>
                 <option value="http://w3.guet.edu.cn/robotcenter/">机器人中心</option>
                 <option value="http://w3.guet.edu.cn/gled/">电子设计训练基地</option>
                 <option value="http://w3.guet.edu.cn/wbgo/">电子科学与技术实验中心</option>
                 <option value="http://w3.guet.edu.cn/qrs">嵌入式系统训练基地</option>
                 <option value="http://exp.gliet.edu.cn/article/qgzxzx/Index.html">勤工助学中心</option>
            </select>
            <select name="select" size="1" class="selec">
                 <option value="#" selected="">部、处级单位 ---------</option>
                 <option value="http://w3.guet.edu.cn/yuanban/">党政办公室</option>
                 <option value="http://zzb.guet.cn/">组织部</option>
                 <option value="http://news.guet.edu.cn/">宣传部</option>
                 <option value="http://rsc.guet.edu.cn/RSC/public/Default.aspx">人事处</option>
                 <option value="http://caiwuchu.guet.edu.cn">财务处</option>
                 <option value="http://gdkyc.guet.edu.cn">科技处</option>
                 <option value="http://w3.guet.edu.cn/jiaowuchu/">教务处</option>
                 <option value="http://exp.gliet.edu.cn/xsgzc/index.aspx">学生工作处</option>
                 <option value="http://w3.guet.edu.cn/gonghui/">工会</option>
                 <option value="http://w3.guet.edu.cn/tuanwei/">团委</option>
                 <option value="http://exp.guet.cn/xkjsbgs/">学科建设办公室</option>
                 <option value="http://w3.guet.edu.cn/zhglc/">国有资产管理处</option>
                 <option value="http://gra.guet.edu.cn/yjsgl/web">研究生学院</option>
                 <option value="http://international.guet.edu.cn/">国际合作处</option>
                 <option value="http://w3.guet.edu.cn/net-fuwu/index.asp">网络中心</option>
                 <option value="http://ocw.guet.edu.cn/xjzx">现代教育技术中心</option>
                 <option value="http://w3.guet.edu.cn/lituiban/">离退处</option>
                 <option value="http://w3.guet.edu.cn/gdhq/">后勤处</option>
                 <option value="http://w3.guet.edu.cn/jijianchu/index.html">基建处</option>
                 <option value="http://w3.guet.edu.cn/baowei/">保卫处</option>
                 <option value="http://w3.guet.edu.cn/gfs">国防生选拔办公室</option>
                 <option value="http://w3.guet.edu.cn/jcsj/">纪委办公室 监察室</option>
                 <option value="http://w3.guet.edu.cn/shenji">审计处</option>
                 <option value="http://w3.guet.edu.cn/das/">档案室</option>
                 <option value="http://w3.guet.edu.cn/hospital/">校医院</option>
                 <option value="http://www.gliet-dzyqc.com">电子仪器厂</option>
                 <option value="http://w3.guet.edu.cn/ngw/">女工委</option>
                 <option value="http://kjy.myclub2.com/">桂林电子科技大学科技园</option>
                 <option value="http://xy.guet.edu.cn">桂电校友网</option>
            </select>
        </form>
        	<div class="new3-1">
        		<ul class="new3-ul1">
            		<li><a href="#"><img class="pic1" src="images/img/create_img.gif" /></a></li>
                	<li><a href="#"><img class="pic2" src="images/img/kcLink_img.gif" /></a></li>
                	<li><a href="#"><img class="pic2" src="images/img/MBA.jpg" /></a></li>
                	<li><a href="#"><img class="pic2" src="images/img/qs_img.gif" /></a></li>
                	<li><a href="#"><img class="chuanye" src="images/img/cyfwjd2.gif" /></a></li>
                	<li><a href="#"><img class="pic2" src="images/img/onlineLink_img.gif" /></a></li>
        		</ul>
            	<ul class="new3-ul2">
            		<li><a href="#"><img class="pic1" src="images/img/dwxx_img.gif" /></a></li>
                	<li><a href="#"><img class="pic2" src="images/img/bhxq.jpg" /></a></li>
               		<li><a href="#"><img class="pic2" src="images/img/create_img.gif" /></a></li>
               		<li><a href="#"><img class="pic2" src="images/img/dzsjjs_img.gif" /></a></li>
                	<li><a href="#"><img class="pic2" src="images/img/gdfz.gif" /></a></li>
                	<li><a href="#"><img class="pic2" src="images/img/rky.gif" /></a></li>
				</ul>
            </div>
   		</div>
    </div>
    <div class="infor tech">
    	<div class="infor1">
        	<img src="images/img/xshy_img.gif" usemap="#mymap"/>   
            <map name="mymap">
            	<area shape="rect" coords="144 ,11, 179, 25" href="#" />
            </map>
           <!-- <ul class="">
            	<li><a href="#" title="工业和信息化部电信研究院何庆立副总工程师、南京邮电大学张顺颐教授10月12日来校讲学">
                		<span class="smallDotBlue">■</span>
                        <span class="date-text">(2012-10-11)</span>
                		<span class="date-text">工业和信息化部电信研究院何庆立副总工程师、南京邮电大学张顺颐教授10月12日来校讲学</span>
                    </a>
                </li>
                <li><a href="#" title="清华大学法学院苏亦工教授、博导10月16日来我校讲学">
                		<span class="smallDotBlue">■</span>
                        <span class="date-text">(2012-10-11)</span>
                		<span class="date-text">清华大学法学院苏亦工教授、博导10月16日来我校讲学</span>
                    </a>
                </li>
                <li><a href="#" title="美国劳伦斯技术大学汽车研究院教授施善博士10月20日来校讲学">
                		<span class="smallDotBlue">■</span>
                        <span class="date-text">(2012-10-17)</span>
                		<span class="date-text">美国劳伦斯技术大学汽车研究院教授施善博士10月20日来校讲学</span>
                    </a>
                </li>
            </ul>
            -->
            <div class="infor1-1">
            	<div class="in">
                	<a href="#" title="工业和信息化部电信研究院何庆立副总工程师、南京邮电大学张顺颐教授10月12日来校讲学">
                		<span class="smallDotBlue">■</span>
                        <span class="date-text">(2012-10-11)</span>
                		<span class="date-text">工业和信息化部电信研究院何庆立副总工程师、南京邮电大学张顺授10月12日来校讲学
                        </span>
                    </a>
                </div>
                <div class="in">
                    <a href="#" title="清华大学法学院苏亦工教授、博导10月16日来我校讲学">
                		<span class="smallDotBlue">■</span>
                        <span class="date-text">(2012-10-11)</span>
                		<span class="date-text">清华大学法学院苏亦工教授、博导10月16日来我校讲学</span>
                    </a>
                </div>
                <div class="in">
                    <a href="#" title="美国劳伦斯技术大学汽车研究院教授施善博士10月20日来校讲学">
                		<span class="smallDotBlue">■</span>
                        <span class="date-text">(2012-10-17)</span>
                		<span class="date-text">美国劳伦斯技术大学汽车研究院教授施善博士10月20日来校讲学</span>
                    </a>
                </div>
             </div>
             <div class="ab"><a href="#"><img class="tubiao2" src="images/img/主页图标22.png" /></a>
             	<a href="#"><img class="tubiao2" src="images/img/IIP2.jpg" /></a>
             	<a href="#"><img class="tubiao2" src="images/img/center.jpg" /></a>
             </div>	
        </div>
        <script language="JavaScript">
   			function SctNews(tp, obj)
			 {
					var dv = document.getElementById("dv" + tp), odv = SctNews.os, odb = 	SctNews.od;
     				if (dv) {
						 if (!odv) {
										odv = document.getElementById("dv2");
										odb = document.getElementById("kuaixun");
		    					   }
						 odb.style.backgroundColor = "#BDE9FF";		<!--淡蓝色-->
						// odv.style.display = "none";
						 dv.style.display = "block";
						 obj.style.backgroundColor = "#006699";		<!--深蓝色-->
						 SctNews.od = obj; SctNews.os = dv;						
	    				    }
			} 
	    </script>
        <div class="infor2">
        	<div class="infor2-top kankan">
            	<a href="#"><div id="kuaixun" onmouseover="SctNews(2,this)"><span>校园快讯</span></div></a>
                <a href="#"><div id="dongtai" onmouseover="SctNews(8,this)"><span>学院动态</span></div></a>
                <a href="#"><div id="media" onmouseover="SctNews(9,this)"><span>媒体桂电</span></div></a>
            </div>
            <div class="infor2-body">
            	<div id="dv2">
  					             	<div class="new2-content">
                		<a href="#" title="【热点聚焦】教育部部长袁贵仁在全面提高高等教育质量工作会议上的讲话">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-18)</span>
                			<span class="date-text" >【热点聚焦】教育部部长袁贵仁在全面提高高等教育质量工作会议上的讲话
                            </span>
                		</a>
                	</div>
                    <div class="new2-content">
                		<a href="#" title="【热点聚焦】教育部关于全面提高高等教育质量的若干意见">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-18)</span>
                			<span class="date-text" >【热点聚焦】教育部关于全面提高高等教育质量的若干意见</span>
                		</a>
                	</div>
                    <div class="new2-content">
                		<a href="#" title="【热点聚焦】奋进在充满希望的中国道路上（社论）——庆祝中华人民共和国成立63周年">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-03)</span>
                			<span class="date-text" >
                            	【热点聚焦】奋进在充满希望的中国道路上（社论）——庆祝中华人民共和国成立63周年
                            </span>
                		</a>
                	</div>
                    <div class="new2-content">
                		<a href="#" title="校工会代表团到职业技术学院慰问（图）">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-19)</span>
                			<span class="date-text" >校工会代表团到职业技术学院慰问（图）</span>
                		</a>
                	</div>
                    <div class="new2-content">
                		<a href="#" title="重聚首，情更浓——我校64级108班校友欢聚母校（图）">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-18)</span>
                			<span class="date-text" >重聚首，情更浓——我校64级108班校友欢聚母校（图）</span>
                		</a>
                	</div>
                    <div class="new2-content">
                		<a href="#" title="中国科学院计算技术研究所史忠植研究员来校讲学">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-17)</span>
                			<span class="date-text" >中国科学院计算技术研究所史忠植研究员来校讲学</span>
                		</a>
                	</div>
                    <div class="new2-content">
                		<a href="#" title="西班牙国家研究委员会人工智能研究所所长Ramon Lopez de Mantaras教授来校讲学">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-17)</span>
                			<span class="date-text" >
                            	西班牙国家研究委员会人工智能研究所所长Ramon Lopez de Mantaras教授来校讲学
                            </span>
                		</a>
                	</div>
                    <div class="new2-content">
                		<a href="#" title="俞梦孙院士一行到生命与环境科学学院参观指导（图）">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-15)</span>
                			<span class="date-text" >俞梦孙院士一行到生命与环境科学学院参观指导（图）</span>
                		</a>
                	</div>
                     <div class="new2-content">
                		<a href="#" title="我校第二十五届门球邀请赛圆满结束（图）">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-15)</span>
                			<span class="date-text" >我校第二十五届门球邀请赛圆满结束（图）</span>
                		</a>
                	</div>
            	</div>
                <div id="dv8">
                	<div class="new2-content">
                			<a href="#" title="法学院教师当选为中国法学会比较法研究会理事">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-19)</span>
                			<span class="date-text">法学院教师当选为中国法学会比较法研究会理事</span>
                		</a>
                	</div>
                    <div class="new2-content">
                			<a href="#" title="提升服务思想，找准责任定位——电子工程与自动化学院开展学生干部培训">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-19)</span>
                			<span class="date-text">提升服务思想，找准责任定位——电子工程与自动化学院开展学生干部培训</span>
                		</a>
                	</div>
                    <div class="new2-content">
                			<a href="#" title="研究生学院第四届田径运动会隆重举行">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-19)</span>
                			<span class="date-text">研究生学院第四届田径运动会隆重举行</span>
                		</a>
                	</div>
                    <div class="new2-content">
                			<a href="#" title="加强校地合作，共筑友谊桥梁——电子工程与自动化学院团委学生会代表拜访灵川县团县委">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-18)</span>
                			<span class="date-text">加强校地合作，共筑友谊桥梁——电子工程与自动化学院团委学生会代表拜访灵川县团县委</span>
                		</a>
                	</div>
                    <div class="new2-content">
                			<a href="#" title='机电工程学院金鸡岭校区"迎新杯"篮球赛开赛（图）'>
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-16)</span>
                			<span class="date-text">机电工程学院金鸡岭校区"迎新杯"篮球赛开赛（图）</span>
                		</a>
                	</div>
                    <div class="new2-content">
                			<a href="#" title='计算机科学与工程学院开展"微博"线上入学教育（图）'>
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-16)</span>
                			<span class="date-text">计算机科学与工程学院开展"微博"线上入学教育（图）</span>
                		</a>
                	</div>
                    <div class="new2-content">
                			<a href="#" title="电子工程与自动化学院第三届运动会成功举办">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-15)</span>
                			<span class="date-text">电子工程与自动化学院第三届运动会成功举办</span>
                		</a>
                	</div>
                    <div class="new2-content">
                			<a href="#" title="国际学院免费为我校教职工子弟开办英语口语班（图）">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-15)</span>
                			<span class="date-text">国际学院免费为我校教职工子弟开办英语口语班（图）</span>
                		</a>
                	</div>                    
                    <div class="new2-content">
                			<a href="#" title='"我学习，我快乐"—计算机科学与工程学院2011级举办年级排球赛'>
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-15)</span>
                			<span class="date-text">"我学习，我快乐"—计算机科学与工程学院2011级举办年级排球赛</span>
                		</a>
                	</div>
                </div>
                <div id="dv9">
                	<div class="new2-content">
                		<a href="#" title="桂林日报：2012年中国生物医学工程高层论坛在桂林举行">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-19)</span>
                			<span class="date-text">桂林日报：2012年中国生物医学工程高层论坛在桂林举行</span>
                		</a>
                	</div>  
                    <div class="new2-content">
                		<a href="#" title="中新桂林网：第七届智能信息处理国际会议在桂林举行">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-16)</span>
                			<span class="date-text">中新桂林网：第七届智能信息处理国际会议在桂林举行</span>
                		</a>
                	</div>  
                    <div class="new2-content">
                		<a href="#" title="中新网广西频道：2012年生物医学工程高层论坛在桂林举行">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-15)</span>
                			<span class="date-text">中新网广西频道：2012年生物医学工程高层论坛在桂林举行</span>
                		</a>
                	</div>  
                    <div class="new2-content">
                		<a href="#" title="广西政府网：全区首届基层群众文艺会演落幕">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-01)</span>
                			<span class="date-text">广西政府网：全区首届基层群众文艺会演落幕</span>
                		</a>
                	</div>  
                    <div class="new2-content">
                		<a href="#" title="广西日报：全区首届基层群众文艺会演落幕">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-10-01)</span>
                			<span class="date-text">广西日报：全区首届基层群众文艺会演落幕</span>
                		</a>
                	</div>  
                    <div class="new2-content">
                		<a href="#" title="北海电视台：桂电职院2012级新生军训汇演侧记（视频）">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-09-25)</span>
                			<span class="date-text">北海电视台：桂电职院2012级新生军训汇演侧记（视频）</span>
                		</a>
                	</div>  
                    <div class="new2-content">
                		<a href="#" title="桂林晚报：大学生下乡义务修电器">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-09-24)</span>
                			<span class="date-text">桂林晚报：大学生下乡义务修电器</span>
                		</a>
                	</div>  
                    <div class="new2-content">
                		<a href="#" title="北海电视台：桂电职院举行2012年新生开学典礼暨军训汇演（视频）">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-09-19)</span>
                			<span class="date-text">北海电视台：桂电职院举行2012年新生开学典礼暨军训汇演（视频）</span>
                		</a>
                	</div>  
                    <div class="new2-content">
                		<a href="#" title="北海日报：大学新生军训（图）">
                    		<span class="smallDotBlue">■</span>
                			<span class="date-text">(2012-09-11)</span>
                			<span class="date-text">北海日报：大学新生军训（图）</span>
                		</a>
                	</div>  
                </div >
                <div class="infor2-more">
                	<a href="#"><span>more...</span></a>
                </div>
            </div>
            
        </div>
        <div class="infor3">
        	<a href="#"><img class="adult" src="images/img/图标设置555.jpg" /></a>
            <a class="cd test" href="#"><img class="adult" src="images/img/图标设置666.jpg" /></a>  <!--用了继承test-->
            <img class="Temp" src="images/img/TempFlash05.jpg" />
            <a href="#"><img class="new12" src="images/img/桂电杯广告条new121231.jpg" /></a>
        </div>
    </div>
</div>
<div class="footer">
	<div class="foot1">
    	<pre class="foot-font1">版权所有：桂林电子科技大学  校址：中国广西桂林金鸡路1号  邮编：541004  传真：2191683</pre>
    </div>
    <div class="foot2">
    	<pre class="foot-font2">备案号：<a href="#" class="foot-font3">桂ICP备 05000961 号</a>   前置审核编号：桂JS200601-05</pre>
        <a href="#"><img class="bigt" src="images/img/bjgt.gif" /></a>
        <a href="#"><img class="bigt" src="images/img/baicp.gif" /></a>
        <a href="#"><img class="bigt" src="images/img/police1.gif" /></a>
    </div>
</div>
</body>
</html>


