<%--
  Created by IntelliJ IDEA.
  User: V330
  Date: 2020/10/23
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面(有验证码)</title>
</head>
<body>
    欢迎登录本系统<br>
    <div align="center">
    <form name = "loginForm">
        请您输入账号:<input type="text"name="account"/><br>
        请您输入密码:<input type="password" name="password"/><br>
        验证码:<input type="text" name = "code" size="10">
        <!--将验证码当成图片来处理-->
        <img name = "imgValidate" border="0" src="./jsp/validate.jsp" onclick="refresh()">
        <input type="submit" value="登录">
    </form>

    </div>
    <script>
        function refresh(){
            document.loginForm.imgValidate.src = "./jsp/validate.jsp?id="+Math.random();
        }
    </script>
</body>
</html>
