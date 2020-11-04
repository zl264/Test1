<%--
  Created by IntelliJ IDEA.
  User: V330
  Date: 2020/10/26
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String filename = request.getParameter("file");
    response.setHeader("Content-Disposition","attachment;filename="+filename);
    response.setContentType("image/jpeg");

    RequestDispatcher rd = request.getRequestDispatcher("/FILES/"+filename);
    rd.forward(request,response);
%>
