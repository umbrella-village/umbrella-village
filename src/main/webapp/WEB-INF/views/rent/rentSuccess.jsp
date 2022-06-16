<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<c:url var="R" value="/" />
<%@ include file="/WEB-INF/views/home/base.jsp"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
   crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${R}res/common.css">
<link rel="stylesheet" href="${R}res/mypage.css">
<style>
  div.box {  padding: 60px; width: 1000px; }
</style>


</head>
<body>
<div class="box container" style="margin-top:200px; margin-bottom:150px; text-align:center; ">
<h1 class="blue"><i class="fa fa-check"></i></h1>
   <h1 class="title">우산 대여가 완료되었습니다 </h1>
   <p style="margin-top:20px;">우산 빌리지를 이용해주셔서 감사합니다😊<br>
   우산 대여 규정을 꼭 지켜주시면서 사용 부탁드립니다 :)<br>
   규정을 다시 안내 받고 싶으시다면, 공지사항 페이지 서비스 이용안내 하단을 참고해주시길 바랍니다.<br>
   </p>
   <p style="margin-top:20px; margin-bottom:50px;">그 외 문의사항이 있다면 아래 연락처로 연락바랍니다<br><br>
   <small>📞010-6686-2779</small>
   <br>
   <small>✉️ duck_sim@naver.com</small>
   </p>
   <a href="/user/index" class="btn btn-xl btn-outline-light">마이페이지로</a> <a href="index" class="btn btn-xl btn-outline-light">홈으로</a>
   </div>
</body>
</html>
<%@ include file="/WEB-INF/views/home/footer.jsp"%>