<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style>
    div.container { width: 700px; margin: 50px auto; font-size: 10pt; }
    thead th { background-color: #eee; }
    table{ border-collapse: collapse; }
    td, th { padding: 4px 6px; border: 1px solid lightgray; }
    .btn { padding: 0.1em 0.5em; border: 1px solid gray;           
       border-radius: 0.3em; background: linear-gradient(#fff, #ddd); 
       text-decoration: none; color: black; display: inline-block; }                
  </style>
</head>
<body>
<div class="container">
  
  <h1>우산목록</h1> 
  <table class="table table-bordered mt5">
    <thead>
      <tr>
        <th>우산</th>
        <th>위치</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="umbrella" items="${umbrella}">
        <tr>
          <td>${umbrella.id}</td>
          <td>${umbrella.location.id }</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  
  <!-- 렌탈 목록 조회 -->
  <!--
  <table class="table table-bordered mt5">
    <thead>
      <tr>
        <th>대여번호</th><th>대여일</th><th>반납일</th>
        <th>사용자</th><th>위치</th><th>우산</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="rental" items="${rental}">
        <tr>
        
          <td>${rental.rentalid}</td>
          <td>${rental.startdate}</td>
          <td>${rental.returndate}</td>
          <td>${rental.user.id}</td>
          <td>${rental.location.id}</td>
          <td>${rental.umbrella.id}</td>          
        </tr>
      </c:forEach>
    </tbody>
  </table>
  -->
</div>
</body>
</html>

