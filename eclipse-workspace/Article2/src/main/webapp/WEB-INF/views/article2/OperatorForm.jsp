<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    
    <style>

        #mainimg {
            left: 50px;
            width: 600px;
            height: 500px;
        }

    </style>
</head>

<body>
       <div id='main'>
           <img id='mainimg' src="${contextPath}/resources/img/Operator.png">
        </div>
</body>
</html>
