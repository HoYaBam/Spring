<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>



<html>
<head>
<meta charset="UTF-8">
<style>
	#classL {
		position: relative;
        margin: 0 auto;
        top: 100px;
        right: 140px;
        width: 1000px;
        height: 100%;
	}
	a {
	}
</style>
<title>강의실 출력창</title>
</head>
<body>
<div id="classL">
<table border="1"  align="center"  width="80%">
    <tr align="center"   bgcolor="cyan">
      <td ><b>강의코드</b></td>
      <td><b>강의명</b></td>
      <td><b>교수명</b></td>
      <td><b>삭제</b></td>
      <td><b>수정</b></td>
   </tr>
   
   <c:forEach var="classL" items="${classsList}" >    
   <tr align="center">
      <td>${classL.class_id}</td>
      <td>${classL.sub_name}</td>
      <td>${classL.name}</td>
      <td><a href="#">삭제하기</a></td>
      <td><a href="#">수정하기</a></td>
    </tr>
  </c:forEach>  
  

   
</table>
</div>
</body>
</html>
