<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>编译原理教学网站</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<script type="text/javascript" src="../../js/index.js"></script>
	<script type="text/javascript" src="../../js/jquery-1.11.1.min.js"></script>
<!-- <script type="text/javascript">
$(function(){
	$(".kj").click(function(){
		alert(8);
	});
}); -->
</script>
  </head>
  
  <body><input type="hidden" id="code"  value="${sessionScope.login}"/>
    <div id="main">
    	<div id="head">
    		<p>
    			<a href="home.jsp"><img src="image/top.png" alt="网站图标"></img></a>
    			<span class="login register"><a href="WEB-INF/views/login.jsp"  onclick="checkLogin()" id="login">登录</a>|<a href="WEB-INF/views/register.jsp">注册</a></span>
    		</p>
    		<div class="menu">
				<nav>
    				<a href="view/source/course.jsp" class="tip kj" target="myframe">课程教学</a>
    				<a href="view/source/homework.jsp" class="tip" target="myframe">作业管理</a>
    				<a href="view/source/question.jsp" class="tip" target="myframe">题库管理</a>
    				<a href="view/source/bbs.jsp" class="tip" target="myframe">BBS论坛</a>
    				<a href="view/source/upload.jsp" class="tip" target="myframe">资源下载</a>
    			</nav>
    		</div>
    	</div>
    	<div id="left">
    		<ul>
    			<li>系统管理
    				<ul>
	    				<li><a href="#" target="myframe" onclick="javascript:chaxun()">用户管理</a></li>
	    				<li><a href="#" target="myframe">权限管理</a></li>
    				</ul>
    			</li>
    			<li>素材管理
	    			<ul>
	    				<li><a href="#" target="myframe">试题管理</a></li>
	    			</ul>
	    		</li>
    			<li>课程管理
    				<ul>
    					<li><a href="#" target="myframe">成绩管理</a></li>
    				</ul>
    			</li>
    		</ul>
    	</div>
    	<div id="center">
    		<iframe id="myframe" name="myframe" src=""></iframe>
    	</div>
    	<div id="foot">
    		<p align="center";>CopyRight:黄冈师范学院-计软实验班2011-王干</p>
    		<p align="center";>2015年5月15日</p>
    	</div>
    </div>
  </body>
</html>
