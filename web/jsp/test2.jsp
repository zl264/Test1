<%--
  Created by IntelliJ IDEA.
  User: V330
  Date: 2020/10/22
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AJAX测试2</title>
</head>
<body>
    <script>
        // var xmlHttp = new XMLHttpRequest();
        var xmlHttp = new ActiveXObject("Msxml2.XMLHTTP")
        function showInfo(){
            xmlHttp.open("GET","./jsp/info.jsp",true);
            xmlHttp.onreadystatechange = showState;
            xmlHttp.send();
        }
        function showState(){
            document.write(xmlHttp.readyState);
        }
    </script>
    <input type="button" value="点一下" onclick="showInfo()">
</body>
</html>
