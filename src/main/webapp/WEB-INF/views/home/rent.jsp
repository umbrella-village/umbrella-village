<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="${R}res/common.css">
  <style>
    div.box { padding: 80px; width: 300px; }
  </style>
</head>
<body>
  <div class="box">
    
    <sec:authorize access="not authenticated">
      <a href="index" class="link">Home</a>
      <a href="about" class="link">About</a>
      <a href="rent" class="link">Rent</a>
      <a href="login" class="link">Mypage</a>
      <a href="signUp" class="link">SignUp</a>
      <a class="link" href="${R}login">Login</a>
    </sec:authorize>
    <sec:authorize access="authenticated">
      <a href="index" class="link">Home</a>
      <a href="about" class="link">About</a>
      <a href="rent" class="link">Rent</a>
      <a class="link" href="${R}user/index">Mypage</a>
      <a class="link" href="${R}logout_processing">Logout</a>
    </sec:authorize>

	<h1>우산 대여하기</h1>  
  
  <div class="container">
  <c:forEach var="location" items="${ locations }">
    <h3>${ location.locationName }</h3>  
    <table class="list">
<!--       <thead>
        <tr>
          <th>우산번호</th>
          <th>사진</th>
          <th>대여</th>
        </tr>
      </thead> -->
      <tbody>
        <c:forEach var="umbrella" items="${ location.umbrellas }">
          <tr>
            <td>${ umbrella.id }</td>
            <td><img src="/umbrella-images/${ umbrella.fileName }.jpg" style="width:100px; height:100px;" /> </td>
            <td><button onclick="location='renttest.jsp'">대여</button></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </c:forEach>
</div>
  </div>
</body>
</html>