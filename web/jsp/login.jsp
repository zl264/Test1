<%--
  Created by IntelliJ IDEA.
  User: V330
  Date: 2020/10/22
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
    欢迎登录学生管理系统.<hr>
    <div id="resultDiv">
        <form name="loginForm">
            请您输入账号:<input type="text" name="account"><br>
            请您输入密码:<input type="password" name="password"><br>
            <input type="button" value="登录" onclick="login()">
        </form>
    </div>
    <script>
        function login(){
            var xmlHttp = new XMLHttpRequest();
            var account = document.loginForm.account.value;
            var password = document.loginForm.password.value;
            xmlHttp.open("GET","LoginServlet?account="+account+"&password="+password,"true");
            xmlHttp.onreadystatechange = function (){
                if(xmlHttp.readyState == 4){
                    resultDiv.innerHTML = xmlHttp.responseText;
                }else{
                    resultDiv.innerHTML += "正在登录，请稍后";
                }
            }
            xmlHttp.send();
        }
    </script>
</body>
</html>
