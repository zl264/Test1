<%--
  Created by IntelliJ IDEA.
  User: V330
  Date: 2020/10/26
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
</head>
<body>
    <form action="/zlweb/Upload" method="post" enctype="multipart/form-data">
        <input type="file" name="myFile">
        <input type="submit" value="上传">
    </form>
${msg}
</body>
</html>
