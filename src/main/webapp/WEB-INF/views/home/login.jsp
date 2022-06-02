<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/home/base.jsp"%>
<c:url var="R" value="/" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <h1 class="title">로그인</h1>
    <hr style="color: #5485ae; margin-bottom:50px;">
    <form method="post" action="${R}login_processing">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
      <div>
        <div class="label">아이디</div>
        <input type="text" placeholder="아이디" name="userid" />
      </div><br>
      <div>
        <div class="label">비밀번호</div>
        <input type="password" placeholder="비밀번호" name="passwd" />
      </div><br>
      <button type="submit" class="btn btn-xl btn-outline-light">로그인</button>
      <button type="button" class="btn btn-xl btn-outline-light"  onclick = "location.href ='${R}'">취소</button>
      
      <c:if test="${ param.error != null }">
      	<div class="error">로그인 실패</div>
      </c:if>
    </form>
    <hr style="color: #5485ae; margin-top: 50px; pargin-bottom:50px;">
    <p>아직 계정이 없다면? <a href="signUp"> 회원가입</a></p>
</div>


</body>
</html>
<%@ include file="/WEB-INF/views/home/footer.jsp"%>
