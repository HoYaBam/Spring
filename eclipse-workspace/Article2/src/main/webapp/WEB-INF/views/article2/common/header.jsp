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
<html>
<head>
  <meta charset="UTF-8">
<title>헤더</title>
</head>

<style>
    

    #login {
        width: 79.8%;
        height: 100px;
        position: relative;
        top: 0;
        right: 250px;
    }

    #login li {
        list-style: none;
        float: right;
        width: 17%;
        height: 60px;
        line-height: 150px;
    }

    #login li a {
        color: black;
        text-decoration: none;
        font-size: 20px;
    }

    
</style>
<body>

<table border=0 width="100%">
  <tr>
  <td>
  	<a href="${contextPath}/article2/mainpageForm.do">
  		<img src="${contextPath}/resources/img/logo2.png"/>
 	 </a>
  </td>
     <td>
         <div id="login">
                <ul>
                    <li><a href="#">curriculum</a></li>
                    <li><a href="#">notice</a></li>
                    <c:choose>
                        <c:when test="${isLogOn == true  && member!= null}">
                            <li><a href="${contextPath}/article2/logout.do">logout</a></li>
                        </c:when>
           				<c:otherwise>
            				<li><a href="${contextPath}/article2/loginForm.do">Login</a></li>
            			</c:otherwise>
                    </c:choose>
                    <c:choose>
           					<c:when test="${member.privllege == 'P'}">
            					<li><a href="${contextPath}/article2/OperatorForm.do">Operator</a></li>
           					</c:when>
           			</c:choose>
                </ul>
            </div>
     </td>
  </tr>
</table>

</body>
</html>