<%@ page import="javax.servlet.jsp.JspFactory" %>
<%--
  Created by IntelliJ IDEA.
  User: V330
  Date: 2020/10/6
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>实验一</title>
  </head>
  <body>
  ${fn:replace("aaabbbccc","aaa","ddd")}
  ${fn:substringAfter("aaabbbccc","bbb" )}
  ${fn:substringBefore("aaabbbccc","bbb" )}
  ${fn:contains("aaa", "a")}
  <c:out value="aaaaa"></c:out></br>
  ${fn:escapeXml(10)}
  </br>
  Server info:<%=application.getServerInfo() %></br>
  Servlet version:<%= application.getMajorVersion()%>.<%=application.getMinorVersion()%></br>
  JSP version<%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion()%></br>
  Java version:<%= System.getProperty("java.version")%></br>

  <script>
      // var msg = "happy";
      // var r1 = msg.substring(1,2);
      // window.alert(r1);
      // window.alert(msg);
      // var r2 = msg.slice(1,2);
      // window.alert(r2);
      // window.alert(msg);
      var a = new Array(1,2,3,4,5,6,7);
      var b = a.slice(3,5);
      alert(a.toString());
      alert(b[0]);
      alert(b.toString());
  </script>
  </body>
</html>
