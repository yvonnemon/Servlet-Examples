<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<html>
<body>

<% Cookie[] cookies = request.getCookies(); %>





<%= request.getProtocol()%>



<form action="/HelloUrl" method="POST">
    First Name: <input type="text" name="first_name">
    <br />
    Last Name: <input type="text" name="last_name" />

    <input type="checkbox" name="mates" checked="checked" /> Maths
    <input type="checkbox" name="fisica"  /> Physics
    <input type="checkbox" name="quimica" checked="checked" /> Quimics

    <input type="submit" value="Submit" />
</form>

<%! int i = 4; %>

<% if (i%3 == 0){%> <b>Hola</b>
<%} else { out.println("<p style='color:red'>Hola</p>" + session.getId()); } %>

<%--<jsp:include page="hola.jsp"/>--%>

<%! String[] lista = new String[]{"Rojo","Verde","Amarillo","Azul"}; %>

<h1>Colores</h1>
<ul>
    <% for (String color: lista) { %>
        <li><%=color%></li>
    <%}%>
</ul>







</body>
</html>