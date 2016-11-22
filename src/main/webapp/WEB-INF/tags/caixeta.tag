<%@ attribute name="cos" required="true" %>
<%@ attribute name="titol" required="true" %>
<%@ attribute name="classe" required="true" %>

<div class="col-sm-4 wow fadeInDown animated" data-wow-duration="1000ms" data-wow-delay="450ms" style="visibility: visible; animation-duration: 1000ms; animation-delay: 450ms; animation-name: fadeInDown;">
    <div class="service-icon">
        <i class="fa <%=classe%>"></i>
    </div>
    <div class="service-info">
        <h3><%=titol%></h3>
        <p><%=cos%></p>
    </div>
</div>

<% if (!session.isNew()) { %> <h1>sesion null</h1> <%}%>
