<%@ page language="java" import="java.util.*,java.sql.*,java.net.*,java.util.regex.*" contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="logUser" class="com.information.User" scope="page"></jsp:useBean>
<jsp:useBean id="userDao" class="com.algorimind.UserDAO" scope="page"></jsp:useBean>
<jsp:setProperty name="logUser" property="*"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>数据库</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<% out.println(userDao.userLogin(logUser)); %>
	<% 
		String[] isUseCookies = request.getParameterValues("savesid"); 
		if(isUseCookies!=null&&isUseCookies.length>0) {
			String username = URLEncoder.encode(request.getParameter("username"),"utf-8");
			Cookie usernameCookie = new Cookie("username",username);
			usernameCookie.setMaxAge(86400);//设置最大生存周期为1天
			Pattern pattern = Pattern.compile("[0-9]*");
			if(pattern.matcher(username).matches()) {
				response.addCookie(usernameCookie);
			}			
		}
		else {
			Cookie[] cookies = request.getCookies();
			if(cookies!=null&&cookies.length>0) {
				for(Cookie c:cookies) {
					if(c.getName().equals("username")||c.getName().equals("userwd")) {
						c.setMaxAge(0);//设置Cookie失效
						response.addCookie(c);//重新保存
					}
				}
			}
		}
	%><br>
	<a href="log.jsp">返回登录</a>
</body>
</html>