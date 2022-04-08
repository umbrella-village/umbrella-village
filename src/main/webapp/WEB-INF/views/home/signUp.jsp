<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${R}res/common.css">
<style>
  div.box { padding: 50px; width: 300px; } 
  div.label { margin-top:10px; }
  .error { color: red; display: block; }
  button { margin-top: 20px; }
</style>
</head>
<body>
<div class="container">
  <div class="box">
    <h1>회원 가입</h1>
    <form:form method="post" modelAttribute="userSignUp">
      <div>
        <div class="label">아이디:</div>
        <form:input path="userid" />
        <form:errors path="userid" class="error" />
      </div>
      <div>
        <div class="label">비밀번호:</div>
        <form:password path="passwd1" />
        <form:errors path="passwd1" class="error" />
      </div>
      <div>
        <div class="label">비밀번호 학인:</div>
        <form:password path="passwd2" />
        <form:errors path="passwd2" class="error" />
      </div>
      <div>
        <div class="label">이름:</div>
        <form:input path="name" />
        <form:errors path="name" class="error" />
      </div>
      <div>
        <div class="label">학번:</div>
        <form:input path="studentNumber" />
        <form:errors path="studentNumber" class="error" />
      </div>
      <div>
        <div class="label">이메일:</div>
        <form:input path="email" />
        <form:errors path="email" class="error" />
      </div>
      <div>
        <div class="label">전화번호:</div>
        <form:input path="phone" />
        <form:errors path="phone" class="error" />
      </div>      
      <div>
        <div class="label">사용자 유형:</div>
        <label><form:radiobutton path="userType" value="교수" /> 교수</label>
        <label><form:radiobutton path="userType" value="학생" /> 학생</label>
        <form:errors path="userType" class="error" />
      </div>
      <button type="submit" class="btn">회원가입</button>
      <a href="${R}" class="btn">취소</a>
    </form:form>
  </div>    
</div>
</body>
</html>

