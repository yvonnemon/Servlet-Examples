<%@ page import="user.User" %><%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 18/11/16
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="pre" %>
<html>
<head>
    <title>EL example</title>
</head>
<body>

<%! User user = new User("xavi"); %>

${(1 + 2) * 3}

<pre:set var="salary" scope="session" value="${2000*2}"/>

<pre:remove var="salary"/>

    <pre:if test="${salary > 2000}">
        <p>My salary is: <pre:out value="${salary}"/><p>

    </pre:if>





</body>
</html>
