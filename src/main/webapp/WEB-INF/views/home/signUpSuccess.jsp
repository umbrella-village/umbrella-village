<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="R" value="/" />
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
  div.box {  padding: 60px; width: 500px; }
</style>
</head>
<body>
<div class="container" style="margin-top:150px;">
  <div class="box">
    <h1 class="title" >회원 가입 성공</h1><br><br>
    
    <a href="login" style="font-size:20;">로그인</a>
  </div>
</div>
</body>
</html>

<%@ include file="/WEB-INF/views/home/footer.jsp"%>