<%@ page language="java" import= "java.util.*,java.net.*" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.text.*" %>
<jsp:include page="testtime.jsp" flush="false" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>登录</title>
	<script>
		
	</script>
	<style type="text/css">
*{
	margin: 0;
	padding: 0;
}

.bg-blur {
            float: left;
            width: 100%;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            -webkit-filter: blur(15px);
            -moz-filter: blur(15px);
            -o-filter: blur(15px);
            -ms-filter: blur(15px);
            filter: blur(15px);
        }

body{
	font-family: 微软雅黑;
	font-size: 14px;
	background: url(image/1494318631621.jpg) fixed center center;
}
.logo_box{
	width: 280px;
	height: 490px;
	padding: 35px;
	color: #EEE;
	position: absolute;
	left: 50%;
	top:100px;
	margin-left: -175px;
}
.logo_box h3{
	text-align: center;
	height: 20px;
	font: 20px "microsoft yahei",Helvetica,Tahoma,Arial,"Microsoft jhengHei",sans-serif;
	color: #FFFFFF;
	height: 20px;
	line-height: 20px;
	padding:0 0 35px 0;
}
.forms{
	width: 280px;
	height: 485px;
}
.logon_inof{
	width: 100%;
	min-height: 450px;
	padding-top: 35px;
	position: relative;
}		
.input_outer{
	height: 46px;
	padding: 0 5px;
	margin-bottom: 20px;
	border-radius: 50px;
	position: relative;
	border: rgba(255,255,255,0.2) 2px solid !important;
}
.u_user{
	width: 25px;
	height: 25px;
	background: url(image/login_ico.png);
	background-position:  -125px 0;
	position: absolute;
	margin: 12px 13px;
}
.us_uer{
	width: 25px;
	height: 25px;
	background-image: url(image/login_ico.png);
	background-position: -125px -34px;
	position: absolute;
	margin: 12px 13px;
}
.l-login{
	position: absolute;
	z-index: 1;
	left: 50px;
	top: 0;
	height: 46px;
	font: 14px "microsoft yahei",Helvetica,Tahoma,Arial,"Microsoft jhengHei";
	line-height: 46px;
}
label{
	color: rgb(255, 255, 255);
	display: block;
}
.text{
	width: 220px;
	height: 46px;
	outline: none;
	display: inline-block;
	font: 14px "microsoft yahei",Helvetica,Tahoma,Arial,"Microsoft jhengHei";
	margin-left: 50px;
	border: none;
	background: none;
	line-height: 46px;
}
/*///*/
.mb2{
	margin-bottom: 20px
}
.mb2 input{
	text-decoration: none;
	outline: none;
}
.submit {
	margin-top: 20px;
	display: block;
}
.act-but{
	height: 50px;
	width: 280px;
	line-height: 20px;
	text-align: center;
	font-size: 20px;
	border-radius: 50px;
	background: #0096e6;
}
/*////*/
.check{
	width: 280px;
	height: 22px;
}
.clearfix::before{
	content: "";
	display: table;
}
.clearfix::after{
	display: block;
	clear: both;
	content: "";
	visibility: hidden;
	height: 0;
}
.login-rm{
	float: left;
}
.login-fgetpwd {
	float: right;
	margin: 0 0 10px 0;
}
.check{
	width: 18px;
	height: 18px;
	background: #fff;
	border: 1px solid #e5e6e7;
	margin: 0 5px 0 0;
	border-radius: 2px;
}
.check-ok{
	background-position: -128px -70px;
	width: 18px;
	height: 18px;
	display: inline-block;
	border: 1px solid #e5e6e7;
	margin: 0 5px 0 0;
	border-radius: 2px;
	vertical-align: middle
}
.checkbox{
	vertical-align: middle;
	margin: 0 5px 0 0;
}

/*=====*/
.logins{
width: 280px;
height: 27px;
line-height: 27px;
float:left;
padding-bottom: 30px;
}
.qq{
	width: 27px;
	height: 27px;
	float: left;
	display: inline-block;
	text-align: center;
	margin-left: 5px;
	margin-right: 18px;
}
.wx{
	width: 27px;
	height: 27px;
	text-align: center;
	line-height: 27px;
	display: inline-block;
	margin: 5px 18px auto 5px;
}
.wx img{
	width: 16px;
	height: 16px;
	float: left;
	line-height: 27px;
	text-align: center;
}
/*////*/
.sas{
	width: 280px;
	height: 18px;
	float: left;
	color: #FFFFFF;
	text-align: center;
	font-size: 16px;
	line-height: 16px;
	margin-bottom: 50px;
}
.sas a{
	width: 280px;
	height: 18px;
	color: #FFFFFF;
	text-align: center;
	line-height: 18px;
	text-decoration: none;
}
::-webkit-input-placeholder { /* WebKit browsers */
  color: white;
  font-size: 16px;
  font-family: 楷体;
  font-weight: bold;
}

::-moz-placeholder { /* Mozilla Firefox 19+ */
  color: white;
  font-size: 16px;
  font-family: 楷体;
  font-weight: bold;
}

:-ms-input-placeholder { /* Internet Explorer 10+ */
  color: white;
  font-size: 16px;
  font-family: 楷体;
  font-weight: bold;
}   
</style>
</head>

<body>
<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
<%
	String username = "";
	Cookie[] cookies = request.getCookies();
	if(cookies!=null&&cookies.length>0) {
		for(Cookie c:cookies) {
			if(c.getName().equals("username")) {
				username = URLDecoder.decode(c.getValue(),"utf-8");
			}
		}
	}
%>

<div class="logo_box">
	<h3>欢迎来到AlgoriMind</h3>
	<form action="mysql.jsp" name="f" method="post">
		<div class="input_outer">
			<span class="u_user"></span>
			<input type="text" name="username" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;" onFocus="$('.login_password').hide()" onBlur="if(this.value=='') $('.login_password').hide()" value="<%=username %>" type="text" placeholder="请输入账号" required>
		</div>
		<div class="input_outer">
			<span class="us_uer"></span>
			<input type="password" name="userwd" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;" onFocus="$('.login_password').hide()" onBlur="if(this.value=='') $('.login_password').show()" value="" type="password" placeholder="请输入密码" required>
		</div>
		<div class="mb2"><input type="submit" class="act-but submit" style="color: #FFFFFF" value="登录"></div>
		<input name="savesid" value="0" id="check-box" class="checkbox" type="checkbox" checked="checked"><span>记住用户名</span>
	</form>
	<a href="#" class="login-fgetpwd" style="color: #FFFFFF">忘记密码？</a>
	<div class="sas">
		<a href="index.jsp">还没注册账号？</a>
	</div>	
</div>
</body>
</html>