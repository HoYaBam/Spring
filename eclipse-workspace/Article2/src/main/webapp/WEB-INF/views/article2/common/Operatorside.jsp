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
  <title>사이드 메뉴</title>
  <!-- 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script>
        $(function() {
            $('.sub').hide();
            $('.title').click(function() {
                $('.sub').hide(500);
                $('.title').removeClass('on');
                $('.title').css({
                    color: '#000'
                })
                $(this).next().show(500);
                $(this).addClass('on');
                
            }); //title click끝 

            $('.sub li').hover(function() {
                $(this).find('a').css({
                    fontWeight: 'bold'
                });

            }, function() {
                $(this).find('a').css({
                    fontWeight: 'normal'
                });

            }); //sub li hover 끝
            
        }); //첫 function 끝
    </script>
  -->
 <style>
  		#side {
  			position: relative;
  			top: 100px;
            float: left;
            left: 280px;
            
        }
        #side li {
            list-style: none;
        }

        #side a {
            text-decoration: none;
        }
        .group {
        	font-size: 20px;
            margin-bottom: 10px;
        }

        .title {
            height: 35px;
            line-height: 35px;
            cursor: pointer;
            color: #000;
            
        }

        .sub li {
            margin: 3px;
            width: 170px;
            height: 30px;
            line-height: 35px;
        }

        .sub li a {
        	font-size: 16px;
            width: 100%;
            height: 100%;
            color: #000;
        }
        

 </style>
</head>
<body>

	<div id='side'>
            <ul id='navi'>
                <li class='group'>
                    <div class='title'>
                        class management
                    </div>
                    <ul class="sub">
                        <li><a href="${contextPath}/article2/addClassForm.do">Class Creation</a></li>
                        <li><a href="${contextPath}/class/listClass.do">Correction</a></li>
                        <li><a href="#" id="sub_03">Lookup</a></li>
                    </ul>
                </li>
                <li class='group'>
                    <div class='title'>
                        Statistics
                    </div>
                    <ul class="sub">
                        <li><a href="#" id="sub_11">Statistics</a></li>
                        <li><a href="#" id="sub_12">Record</a></li>
                        <li><a href="#" id="sub_13">Situation</a></li>
                        <li><a href="#" id="sub_14">Record</a></li>
                        <li><a href="#" id="sub_15">View</a></li>
                    </ul>
                </li>
                <li class='group'>
                    <div class='title'>
                        System
                    </div>
                    <ul class="sub">
                        <li><a href="#" id="sub_21">Authority</a></li>
                    </ul>
                </li>
                <li class='group'>
                    <div class='title'>
                        Log
                    </div>
                    <ul class="sub">
                        <li><a href="#" id="sub_31">User</a></li>
                        <li><a href="#" id="sub_32">Change</a></li>
                        <li><a href="#" id="sub_33">Search</a></li>
                    </ul>
                </li>
            </ul>
        </div>
	
</body>
</html>