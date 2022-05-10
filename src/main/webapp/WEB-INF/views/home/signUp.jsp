<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="/WEB-INF/views/home/base.jsp"%>
<c:url var="R" value="/" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${R}res/common.css">
<link rel="stylesheet" href="${R}res/user.css">
<style>
  div.box { padding: 50px; width: 300px; } 
  div.label { margin-top:10px; }
  .error { color: red; display: block; }
  button { margin-top: 20px; }
</style>
</head>
<body>
<div class="container" style="margin-top:150px;">
    <h1 class="title">회원가입</h1>
    <hr style="color: #5485ae; margin-bottom:50px;">
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
        <br>
      </div>
      <button type="submit" class="btn btn-xl btn-outline-light">회원가입</button>
      <button type="button" class="btn btn-xl btn-outline-light"  onclick = "location.href ='${R}'">취소</button>
    </form:form>  
</div>
</body>
</html>
<%@ include file="/WEB-INF/views/home/footer.jsp"%>
