<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kamel
  Date: 1/12/2017
  Time: 3:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="welcome">Reload Page</a>
<a href="getNewCust">Add a Customer</a>
<br>
<form action="searchByCity" method="get">
    <input type="text" name="city">
    <input type="submit" value="search">
</form>
<form action="dropdownMenu" method="get">
    <select name="country" onchange="this.form.submit()">
        <option value="null">Select Country</option>
        <option value="uk">UK</option>
        <option value="germany">Germany</option>
        <option value="usa">USA</option>
        <option value="denmark">Denmark</option>
        <option value="mexico">Mexico</option>
        <option value="sweden">Sweden</option>
        <option value="france">France</option>
        <option value="spain">Spain</option>
        <option value="canada">Canada</option>
        <option value="argentina">Argentina</option>
    </select>
    <%--<input type="submit" value="search">--%>
</form>
<br>

<table border=1>
    <c:forEach var="myvar" items="${cList}">
        <tr>
            <td> ${myvar.customerId}</td> <td> ${myvar.companyName}</td>

            <td><a href="delete?id=${myvar.customerId}"> Delete </a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
