<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
 <c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
<style>
   .text_center{
     text-align:center;
   }
</style>
</head>
<body>
	<form method="post" action="${contextPath}/test/login.do">
		아이디 <input type="text" name="id"> <br>
		이름 <input type="text" name="name"> <br>
	<!-- 	<input type="hidden" name="email" value="hong@test.com" /> -->
		<input type="submit" value="수정하기"><input type="reset" value="다시입력">
	</form>
</body>
</html>