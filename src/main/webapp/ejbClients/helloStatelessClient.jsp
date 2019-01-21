<%@ page import="javax.naming.InitialContext" %>
<%@ page import="hari.edu.ejb.component.interfaces.HelloStatelessBeanRemote" %><%--
  Created by IntelliJ IDEA.
  User: DU72KEd
  Date: 29/11/2018
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello Stateless EJB Test Client</title>
</head>
<body>
    <h5>Hello, Welcome to EJB Tutorial</h5>
    Good evening.
    <%
        InitialContext initialContext=new InitialContext();
        HelloStatelessBeanRemote helloStatelessBeanRemote=(HelloStatelessBeanRemote) initialContext.lookup("java:hari.edu.ejb.component.interfaces.HelloStatelessBeanRemote");
        out.println(helloStatelessBeanRemote.add(10,20));
    %>
</body>
</html>
