<%@ page import="java.io.*,java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String title = "Accessing Request Param";

%>

<%     pageContext.setAttribute("title", title);  %>

<html>
<head>
    <title><% out.print(title); %></title>
</head>
<body>
<center>
    <h1>${pageScope.title}</h1>
</center>
<div align="center">

    <c:forEach items="${paramValues['username']}" var="name">
        <p>${name}</p>
        <br/>
    </c:forEach>

    ${cookie['JSESSIONID'].value}

</div>
</body>
</html>
