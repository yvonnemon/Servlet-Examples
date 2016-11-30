<%@ page import="user.User" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<html>
<head>
    <title>Set in Scope Examples</title>
</head>

<body>


<%  if ( request.getParameter("name") != null) {
        session.setAttribute("user_name", request.getParameter("name"));
    }

    out.print(application.getAttribute("user_name"));
    if (application.getAttribute("user_name") == null){
        application.setAttribute("user_name",request.getParameter("name"));
    }

%>


<form action="/jstl/jstl-scope-session.jsp" method="post">
    <input type="text" name="name" id="name"/>
    <input type="submit" value="Enviar"/>
</form>

<table border="1">
    <tr>
        <td>
            <b>Default Level</b>
        </td>

        <td>
            ${test}
            <p>user:${user_name}</p>
        </td>
    </tr>
    <tr>
        <td>
            <b>Page Level</b>
        </td>

        <td>

            <p>user:${pageScope.user_name}</p>
        </td>
    </tr>

    <tr>
        <td>
            <b>Request Level</b>
        </td>

        <td>
            <p>user:${requestScope.user_name}</p>

        </td>
    </tr>

    <tr>
        <td>
            <b>Session Level</b>
        </td>

        <td>
            <p>user:${sessionScope.user_name}</p>
        </td>
    </tr>

    <tr>
        <td>
            <b>Application Level</b>
        </td>

        <td>

            <p>user:${applicationScope.user_name}</p>
        </td>
    </tr>
</table>
</body>
</html>