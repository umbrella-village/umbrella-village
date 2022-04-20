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
    div.box { padding: 50px; width: 300px; }
  </style>
</head>
<body>
<div class="container">
  <div class="box">
    <h1>Home</h1>

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
    
  </div>
</div>
</body>
</html>
