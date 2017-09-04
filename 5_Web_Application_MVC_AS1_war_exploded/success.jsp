<%--
  Created by IntelliJ IDEA.
  User: lvdiboy
  Date: 9/1/17
  Time: 9:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Oh Yeah! Logged in.</title>--%>
<%--</head>--%>

<%--Oh Yeah! Logged in.--%>
<%--<a href="/index.jsp">Logout</a>--%>
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
        <table align="center">
            <tr><td>
                <a href="/adddepartment.jsp">Add Department</a>
            </td></tr>
            <tr><td>
                <a href="/addemployee.jsp">Add Employee</a>
            </td></tr>
        </table>
        <%--  <c:if test="${not empty empList}">
                  <h4>Existing Employee</h4>
                 <table align="center" border="1">
                     <tr><th>First Name</th><th>Last Name</th><th>Age</th></tr>
                     <c:forEach items="${empList}" var="emp">
                     <tr>
                         <td>${emp.firstName}</td>
                         <td>${emp.lastName}</td>
                         <td>${emp.age}</td>
                     </tr>
                     </c:forEach>
                 </table>
         </c:if> --%>
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
        Please Log in first.<a href="/ServletDemo" >Log in</a>
    </c:otherwise>
</c:choose>
</body>
</html>