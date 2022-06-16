<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:url var="R" value="/" />
<%@ include file="/WEB-INF/views/home/base.jsp"%>
<c:url var="R" value="/" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${R}res/common.css">
<link rel="stylesheet" href="${R}res/mypage.css">
<style>
  div.box {  padding: 60px; width: 1000px; }
</style>
</head>
<body>
<div class="box container" style="margin-top:200px; margin-bottom:150px; text-align:center; ">
	<h1 class="blue"><i class="fa fa-check"></i></h1>
   <h1 class="title">회원가입이 완료되었습니다 </h1>
   <p style="margin-top:20px;">우산빌리지에 오신것을 진심으로 환영합니다😊</p>
   <p style="margin-top:20px; margin-bottom:50px;">우산빌리지에서는 항상 이용자분들의 입장에서
   <br>
   보다 좋은 서비스를 받으실 수 있도록 노력하겠습니다.
   <br>
   감사합니다 :)</p>
   
   <a href="login" class="btn btn-xl btn-outline-light">로그인하기</a> <a href="/" class="btn btn-xl btn-outline-light">홈으로</a>
   </div>
</body>
</html>

<%@ include file="/WEB-INF/views/home/footer.jsp"%>