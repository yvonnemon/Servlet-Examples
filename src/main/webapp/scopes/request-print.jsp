<%@ page import="user.User" %>

<%
    if (request.getAttribute("user") != null) {
        out.print(((User)request.getAttribute("user")).getName());
    }
%>
