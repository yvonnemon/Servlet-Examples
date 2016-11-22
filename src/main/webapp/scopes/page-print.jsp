<%@ page import="user.User" %>

<%
    if (pageContext.getAttribute("user") != null) {
        out.print(((User)pageContext.getAttribute("user")).getName());
    }
%>
