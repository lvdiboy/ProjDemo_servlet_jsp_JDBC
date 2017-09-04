<%--
  Created by IntelliJ IDEA.
  User: lvdiboy
  Date: 9/1/17
  Time: 11:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Department</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h>Add Department</h>--%>
<%--<form action="/ServletDemo/addDepartment" method="post">--%>
    <%--<input type="text" name="Department_name"/>--%>
    <%--<input type="text" name="Department_ID"/>--%>
    <%--<input value="Save" type="submit"/>--%>
    <%--<button>Cancel.</button>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns:c="http://java.sun.com/jsp/jstl/core"
      xmlns:fn="http://java.sun.com/jsp/jstl/functions" >
<head><title>Hello ${userName}</title></head>
<body style="text-align: center;">
<c:choose>
    <c:when test="${not empty invalidUser and !invalidUser}">
        <h2>Welcome ${userName} </h2>
        <a href="/ServletDemo/logout" >Log out</a>
        <h2>Add new department</h2>
        <form action="/ServletDemo/addDepartment" method="post">
            <table align="center">
                <tr><td>Dept Name:</td><td>
                    <input type="text" name="deptName" required="required"/>
                </td></tr>
                <tr><td>Dept Email:</td><td>
                    <input type="email" name="deptEmail"/>
                </td></tr>
                <tr><td>
                    <input type="submit">
                    <a href="/success.jsp" >Back</a>
                </td></tr>
            </table>
        </form>
        <c:if test="${not empty deptList}">
            <h4>Existing Department</h4>
            <table align="center" border="1">
                <tr><th>Dept Name</th><th>Email</th><th>Employee</th></th>
                    <c:forEach items="${deptList}" var="dept">
                <tr>
                    <td>${dept.name}</td>
                    <td>${dept.email}</td>
                    <td>
                        <c:forEach items="${dept.employeeList}" var="emp">
                            ${emp.firstName} ${emp.lastName} ${emp.age}<br>
                        </c:forEach>
                    </td>
                </tr>
                </c:forEach>
            </table>
        </c:if>
    </c:when>
    <c:otherwise>
        Please Log in first.<a href="/ServletDemo/login" >Log in</a>
    </c:otherwise>
</c:choose>
</body>
</html>