<%--
  Created by IntelliJ IDEA.
  User: V330
  Date: 2020/10/22
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AJAX的测试</title>
</head>
<script >
    var xmlHttp = false;
    function initAjax(){
        if(window.XMLHttpRequest){
            xmlHttp = new XMLHttpRequest();
            window.alert("支持Mozilla等浏览器")
        }else if(window.ActiveXObject){
            try {
                xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
                window.alert("支持IE方式的");
            }catch (e) {
                window.alert("改浏览器不支持AJAX");
            }
        }
    }
</script>
<body >
欢迎来到本系统.<hr>
<input type="button"  value="显示曾琳的信息" onclick="showInfo() ">
<div id = "infoDiv"></div>
<script>
    function showInfo(){
        // var xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");//IE浏览器
        var xmlHttp = new XMLHttpRequest();
        xmlHttp.open("GET","./jsp/info.jsp",true);
        xmlHttp.onreadystatechange = function (){
            if(xmlHttp.readyState == 4){
                // var infoDiv = document.getElementById("infoDiv");
                // infoDiv.innerHTML = xmlHttp.responseText;
                infoDiv.innerHTML = xmlHttp.responseText;
            }
        }
        xmlHttp.send();
    }
</script>
</body>
</html>
