<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h1 {
	padding: 7px;
	background-color: none;
	color: Red;
}
</style>
</head>
<body>
<h1>Something Went Wrong</h1>
<c:choose>  
    <c:when test="${data != null}">  
      <font color="red">
            <c:out value="${data}"/>
            </font>  
    </c:when>  
    <c:otherwise>  
     Data  Field is Empty...
    </c:otherwise>  
</c:choose> 
</body>
</html>