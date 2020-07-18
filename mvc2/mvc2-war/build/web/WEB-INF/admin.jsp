<%-- 
    Document   : newjsp
    Created on : Jul 13, 2020, 12:31:51 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World! ${SessionScope.loginUser}</h1>
        <form action="ManageServlet" method="POSt">
            Employee ID : <input type="text" name="empid" value="${employee.empid}"/><br/>
            FirstName : <input type="text" name="firstname" value="${employee.firstname}"/><br/>
            LastName : <input type="text" name="lastname" value="${employee.lastname}"/><br/>
            Email : <input type="text" name="email" value="${employee.email}"/><br/>
            
            <input type="submit" name="action" value="ADD"/>
            <input type="submit" name="action" value="EDIT"/>
            <input type="submit" name="action" value="DELETE"/>
            <input type="submit" name="action" value="VIEW"/>
        </form>
            
            <table>
                <TH>EmployeeID</TH>
                <TH>First Name</TH>
                <TH>Last Name</TH>
                <TH>Email</TH>
                    <c:forEach var="emp" items="${getAllEmployee}"></c:forEach>
                <TR>
                    <td>${emp.empid}</td>
                    <td>${emp.firstname}</td>
                    <td>${emp.lastname}</td>
                    <td>${emp.email}</td>
                </TR>
                <c:forEach>
                          
            </table>
    </body>
</html>
