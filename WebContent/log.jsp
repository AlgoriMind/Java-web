<%@ page language="java" import= "java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的第一个网页</title>
<style type="text/css">
	h2{font-size:20px;color:blue;}
	.set{font-size:15px;color:red;}	
	.seta{color:blue;}
</style>
</head>
<body>
	<h2>登录</h2>
	<hr>
		<form name="logForm" method="post" action="mysql.jsp">
			<table>
				<tr>
					<td class="set">账号:</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td class="set">密码:</td>
					<td><input type="password" name="userwd"></td>
				</tr>
				<tr>
					<td colspan="1"><input type="submit" value="登录" class="seta"></td>
					<td colspan="2"><input type="reset" value="取消" class="seta"></td>
				</tr>
			</table>
		</form>
	<br>
	<form name="setlog" method="post" action="mysqlzhuce.jsp">
		<input type="submit" name="zhuce" value="注册账号" class="seta">
	</form>
	
</body>
</html>