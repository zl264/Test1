<%--
  Created by IntelliJ IDEA.
  User: V330
  Date: 2020/10/23
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.awt.*" import="java.util.*" import="javax.imageio.ImageIO" import="java.awt.image.BufferedImage"%>
<%@page pageEncoding="GBK" %>
<html>
<head>
    <title>验证码</title>
</head>
<body>
    <%
        response.setContentType("image/jpeg");//通知浏览器以图片的形式打开
        response.setHeader("Cache-Control","no-cache");
        int width = 60,height = 20;
        BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
        Graphics graphics = image.getGraphics();
        graphics.setColor(new Color(200,200,200));
        graphics.fillRect(0,0,width,height);
        Random random = new Random();
        int randNum = random.nextInt(8999)+1000;
        String randStr = ""+randNum;
        session.setAttribute("randStr",randStr);
        graphics.setColor(Color.BLACK);
        graphics.setFont(new Font("",Font.PLAIN,20));
        graphics.drawString(randStr,10,17);
        for(int i=0;i<100;i++){
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            graphics.drawOval(x,y,1,1);
        }
        ImageIO.write(image,"jpeg",response.getOutputStream());
        out.clear();
        out = pageContext.pushBody();
    %>
</body>
</html>
