<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="javax.servlet.RequestDispatcher" 
	pageEncoding="UTF-8"
	%>
<head>
    <link rel="stylesheet" type="text/css" href="./css/Operator_21Css.css">
</head>
   <div id="top31">
    <input type="text" title="코드입력" placeholder="코드입력">
    <button>검색</button>
</div>
<table class="table">
  <thead>
    <tr>
      <th scope="col">코드</th>
      <th scope="col">사용자</th>
      <th scope="col">권한</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">S-001</th>
      <td>김경태</td>
      <td>
<select class="form-select form-select-sm-1" aria-label=".form-select-sm example">
  <option selected>학습자</option>
  <option value="1">시스템운영자</option>
  <option value="2">교수자</option>
  <option value="3">노예관리</option>
  <option value="4">학습자</option>
</select></td>
    </tr>
    <tr>
      <th scope="row">R-001</th>
      <td>주영현</td>
      <td><select class="form-select form-select-sm-1" aria-label=".form-select-sm example">
  <option selected>시스템운영자</option>
  <option value="1">시스템운영자</option>
  <option value="2">교수자</option>
  <option value="3">노예관리</option>
  <option value="4">학습자</option>
</select></td>
    </tr>
    <tr>
      <th scope="row">Z-001</th>
      <td>이나연</td>
      <td><select class="form-select form-select-sm-1" aria-label=".form-select-sm example">
  <option selected>교수자</option>
  <option value="1">시스템운영자</option>
  <option value="2">교수자</option>
  <option value="3">노예관리</option>
  <option value="4">학습자</option>
</select></td>
    </tr>
    <tr>
      <th scope="row">P-001</th>
      <td>강동호</td>
      <td><select class="form-select form-select-sm-1" aria-label=".form-select-sm example">
  <option selected>노예관리</option>
  <option value="1">시스템운영자</option>
  <option value="2">교수자</option>
  <option value="3">노예관리</option>
  <option value="4">학습자</option>
</select></td>
    </tr>
    
  </tbody>
  
</table>