<%@ page language="java" import= "java.util.*" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
	
    <link rel="stylesheet" href="css/style.css">
	
    <script src="js/form.js"></script>
	
</head>
<body>

    <div class="form" style="position:relative">
		
		<!--注册表单-->
        <div class="form_register" style="position:absolute">  
            <form action="mysqlzhucechuli.jsp" method="post">
                <h1>注册表单</h1>
                <div class="form_item">
                    <label for="username">密码：</label>
                    <input type="password" name="passwd1" id="username" placeholder="请输入密码" required >
                </div>
                <div class="form_item">
                    <label for="password">确认密码：</label>
                    <input type="password" name="passwd2" id="password" placeholder="请再次确认密码" required>
                </div>
                <div class="form_item">
                    <label for="email">电子邮件：</label>
                    <input type="email" name="email" id="email" placeholder="请输入电子邮件" required>
                </div>
                <div class="form_item">
                    <label for="tel">电话：</label>
                    <input type="tel" name="tel" id="tel" placeholder="输入手机号码" required>
                </div>
                <div class="form_item">
                    <input type="submit" value="注册">
                </div>
            </form>
            <div class="info">已有账号？点击<a class="switch login_Btn" href="log.jsp">登录</a></div>
        </div>   
    </div>
</body>
</html>