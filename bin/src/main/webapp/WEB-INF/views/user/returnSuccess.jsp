<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"   prefix="sec"%>
<c:url var="R" value="/" />
<%@ include file="/WEB-INF/views/home/base.jsp"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${R}res/common.css">
<style>
  div.box {  padding: 60px; width: 500px; }
</style>
</head>
<body>
<div class="box" style="margin-top:150px;">
   <h3>반납이 완료되었습니다. </h3> <p>우산 빌리지를 이용해주셔서 감사합니다.</p>
   <a href="index" class="btn">돌아가기</a>
   </div>
</body>
</html>
<%@ include file="/WEB-INF/views/home/footer.jsp"%>