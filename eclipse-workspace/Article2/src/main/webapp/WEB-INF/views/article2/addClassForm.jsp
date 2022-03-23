<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의실 생성</title>
<style>
	#addClass {
		position: relative;
        margin: 0 auto;
        top: 30px;
        right: 230px;
        width: 450px;
        height:700px;
	}
   .text_center{
     text-align:center;
   }
</style>

</head>
<body>
	<div id="addClass">
	<form method="post"   action="${contextPath}/class/addClass.do">
	<h1  class="text_center">강의실 생성</h1>
	<table  align="center" >
	   <tr>
	      <td width="200"><p align="right">강의실 이름</td>
	      <td width="400"><input type="text" name="class_id"></td>
	   </tr>
	   <tr>
	      <td width="200"><p align="right">과목번호</td>
	      <td width="400"><input type="text" name="sub_no"></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">강의목표</td>
	       <td width="400"><p><input type="text" name="curr"></td>
	    </tr>
	     <tr>
	       <td width="200"><p align="right">하고싶은말</td>
	       <td width="400"><p><input type="text" name="plan"></td>
	    </tr>
	    <tr>
	       <td width="200"><p>&nbsp;</p></td>
	       <td width="400"><input type="submit" value="강의실생성"><input type="reset" value="다시입력"></td>
	    </tr>
	</table>
	</form>
	</div>
</body>
