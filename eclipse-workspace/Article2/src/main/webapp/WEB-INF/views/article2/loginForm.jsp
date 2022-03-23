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
    <title>Login</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <c:choose>
	<c:when test="${result=='loginFailed' }">
	  <script>
	    window.onload=function(){
	      alert("아이디나 비밀번호가 틀립니다.다시 로그인 하세요!");
	    }
	  </script>
	</c:when>
</c:choose>
    
<script type="text/javascript">
function fn_sendMember(){
   var frmMember=document.frmLogin;
   var id=frmMember.id.value;
   var pwd=frmMember.pwd.value;

   if(id.length==0 ||id==""){
      alert("Please enter your ID");
   }else if(pwd.length==0 ||pwd==""){
      alert("Please enter your PW");
   }else{
      frmMember.method="post";
      frmMember.action="/Article2/article2/login.do";
      frmMember.submit();
   } 
}
</script>


    <style>
    	#loginForm {
		position: relative;
        margin: 0 auto;
        top: 250px;
        right: 230px;
        width: 450px;
        height:700px;
		}
        form{
            font-size: 30px;
        }
        input{
            border: 1px solid #fff;
            border-bottom: 1px solid #000;
        }
        .pw{
            font-size: 19.5px;
        }
            
      
      
    </style>
</head>
<body>
	<div id="loginForm">
        <form name="frmLogin">
           ID<input type="text" name="id"><br>
           <span class="pw">PW</span><input type="password" name="pwd"> <br>
            <input type="button" value="Login" onclick="fn_sendMember()" class="logbtn">
            <input  type="hidden" name="command" value="logincom"/>
        </form>
        
       </div>
        
</body>
</html>