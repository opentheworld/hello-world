<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/login.css">
  </head>
  
  <body>
    <div id="login">
    	<p>用户注册</p>
    	<div class="login-body">
    	<form action="user/register.do" method="post">
    		<table height="100px" cellpadding="4" bordercolor="yellow">
		    	<tr align="right"><td>用户名：</td><td><input type="text" name="username" required/></td></tr>
		    	<tr align="right"><td>邮箱：</td><td><input type="email" name="email" required/></td></tr>
		    	<tr align="right"><td>密码：</td><td><input type="password" name="password" required/></td></tr>
		    	<tr align="right"><td>确认密码：</td><td><input type="password" name="passwordconfirm" required/></td></tr>
		    	<tr align="right"><td><input type="submit" value="注册"/></td>
		    	<td><input type="reset" value="重置"/></td>
		    	</tr>
	    	</table>
    	</form>
    	</div>
    </div>
  </body>
</html>
