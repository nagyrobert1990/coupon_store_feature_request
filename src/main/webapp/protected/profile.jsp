<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<jsp:include page="../snippets/head.jsp">
    <jsp:param name="title" value="Profile"/>
</jsp:include>
<body>
<h1>Profile</h1>
<p>Email: <c:out value="${user.email}"/></p>
<p>Password: <c:out value="${user.password}"/></p>
<h2>Your Coupons</h2>
    <c:forEach var="coupon" items="${coupons}">
        <p>${coupon.name}</p>
    </c:forEach>
<h3>Links</h3>
<ul>
    <li><a href="shops">Shops</a></li>
    <li><a href="coupons">Coupons</a></li>
</ul>
<jsp:include page="../snippets/logout.jsp"/>
</body>
</html>
