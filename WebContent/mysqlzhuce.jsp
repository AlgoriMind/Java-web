<%@ page language="java" import= "java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%@page import="java.io.IOException"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
<style type="text/css">
	h2{font-size:20px;color:blue;}
	.set{font-size:15px;color:red;}	
	.seta{color:blue;}
	#setb{font-size:25px;color:green;}
</style>
</head>
<body>
	<h2>注册账号</h2>
	<hr>
	<form name="zhucenumber" method="post" action="mysqlzhucechuli.jsp">
		<table>
			<tr>
				<td class="set">请输入密码:</td>
				<td><input type="password" name="passwd1"></td>
			</tr>
			<tr>
				<td class="set">请确认密码:</td>
				<td><input type="password" name="passwd2"></td>
			</tr>
			<tr>
				<td><input type="submit" value="立即注册" class="seta"></td>
				<td><input type="reset" value="重新输入" class="seta"></td>
			</tr>
		</table>
	</form>	
	<br>
	<form name="fanhui" method="post" action="log.jsp">
		<input type="submit" value="返回登陆" id="setb">
	</form>	
	
</body>
</html>