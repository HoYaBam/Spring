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
    <title>메인페이지</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        #mainimg {
            width: 100%;
            height: 1000px;
            position: absolute;
            z-index: 0;
            top: 0;
        }

        #mainimg img {
            width: 100%;
            height: 1000px;
            z-index: 0;
        }

        #wrap {
            position: absolute;
            width: 1500px;
            z-index: 999;
        }
        .mainbtn {
            position: absolute;
            width: 70px;
            height: 80px;
            border:1px solid #fff;
            left: 60px;
            top : 230px;
            font-size: 40px;
            background: none;
            
        }
        #logo{
            position: absolute;
            top: -150px;
            left: -200px;
            width: 600px;
            height: 500px;

        }
        #maintext{
            text-align: center;
            color: white;
            font-size: 53px;
            position: absolute;
            z-index: 11;
            top: 310px;
            left: 540px;
        }
        #nextText{
            position: absolute;
            color: white;
            right: 0;
            font-size: 37px;
            top: 700px;
        }
        #bot{
            
            position: absolute;
            top: 1050px;
            left: 550px;
            width: 900px;
            height: 400px;
            color: black;
            
        }
        a{
            color: white;
            list-style: none;
            text-decoration: none;
        }
    </style>
</head>

<body>
<div id="mainimg">
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="${contextPath}/resources/img/mainimg.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="${contextPath}/resources/img/mainimg2.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="${contextPath}/resources/img/mainimg3.png" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    </div>
    <div id="wrap">
       <img src="${contextPath}/resources/img/mainlogo.png" id="logo">
        <a class="btn btn-dark mainbtn" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
            =
        </a>
        
        <div id="nextText">
            
            <a></a>
            <c:choose>
            	<c:when test="${isLogOn == true  && member!= null}">
            		<c:choose>
            			<c:when test="${member.privllege == 'P'}">
            			<a href="${contextPath}/article2/OperatorForm.do">Operator</a>
            			</c:when>
            		</c:choose>
            		<a href="${contextPath}/article2/logout.do">logout</a>
            	</c:when>
            	<c:otherwise>
            		<a href="${contextPath}/article2/loginForm.do">Login</a>
            	</c:otherwise>
            </c:choose>
            
        </div>
        
        <p id="maintext">Don't be afraid of death, Winnie Be afraid of the unlived life.</p>

        <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
            <div class="offcanvas-header">
                <h2 class="offcanvas-title" id="offcanvasExampleLabel">Menu</h2>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div>
                    <a><h3>notice</h3></a>
                    <a><h3>introduction</h3></a>
                    <a><h3>curriculum</h3></a>
                    <br><br>
                    <c:choose>
         			  <c:when test="${isLogOn == true  && member!= null}">
          				  <a><h3>Lissome</h3></a>
                    	  <a><h3>Q&A</h3></a>
                    	  <a><h3>Iridescente</h3></a>
                    	  <a><h3>Moonlight</h3></a>
                    	  <a><h3>Dignity</h3></a>
                    	  <br><br>
          			</c:when>
          			<c:otherwise>
	        			
	      			</c:otherwise>
	   				</c:choose> 
                    
                    
                </div>
            </div>
        </div>
        <div id="bot">
        <h2>
        Behind the Design: These boxes throughout the page illustrate some of the elements needed for an accessible webpage.

To learn more about digital accessibility and tips for making your webpage more accessible, explore the resources of Harvardâs Digital Accessibility Services.
 </h2>  </div>
    </div>
    
</body></html>