<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Customers list</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

<div id="wrapper">
    <div id="header">
        <h2>CRM - Customer relationship manager</h2>
    </div>
</div>

<div id="container">
    <div id="content">

        <!-- put new button: Add Customer -->

        <input type="button" value="Add Customer"
               onClick="window.location.href='showFormForAdd'; return false;"
               class="add-button"
        />

        <!-- add our html table here -->

        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
            </tr>

            <!-- loop over and print our customers -->
            <c:forEach var="customer" items="${customers}">
                <tr>
                    <td>${customer.firstName}</td>
                    <td>${customer.lastName}</td>
                    <td>${customer.email}</td>
                </tr>
            </c:forEach>

        </table>
    </div>
</div>

</body>
</html>
