<%@ page import="user.User" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<html>
<head>
    <title>Set in Scope Examples</title>
</head>

<body>
<%! User user = new User("Xavi"); %>

<%     pageContext.setAttribute("user", user);  %>

<%     request.setAttribute("user", user);  %>

<%     session.setAttribute("user", user);  %>

<%     application.setAttribute("user", user);  %>


<c:set var="test" value="Page Level Value" scope="page" />

<c:set var="test" value="Request Level Value"
       scope="request" />

<c:set var="test" value="Session Level Value"
       scope="session" />

<c:set var="test" value="Application Level Value"
       scope="application" />

<table border="1">
    <tr>
        <td>
            <b>Default Level</b>
        </td>

        <td>
            ${test}
            <p>user:${user.name}</p>
            <!-- DUBTE ALBERT -->
            <p>user:${user.nameToUpperCase()}</p>
            ${user.toUpperCase()}
        </td>
    </tr>
    <tr>
        <td>
            <b>Page Level</b>
        </td>

        <td>
            <c:out value="${pageScope.test}" />
            <p>user:${pageScope.user.name}</p>
        </td>
    </tr>

    <tr>
        <td>
            <b>Request Level</b>
        </td>

        <td>
            <c:out value="${requestScope.test}" />
            <p>user:${requestScope.user.name}</p>

        </td>
    </tr>

    <tr>
        <td>
            <b>Session Level</b>
        </td>

        <td>
            <c:out value="${sessionScope.test}" />
            <p>user:${sessionScope.user.name}</p>
        </td>
    </tr>

    <tr>
        <td>
            <b>Application Level</b>
        </td>

        <td>
            <c:out value="${applicationScope.test}" />
            <p>user:${applicationScope.user.name}</p>
        </td>
    </tr>
</table>
</body>
</html>