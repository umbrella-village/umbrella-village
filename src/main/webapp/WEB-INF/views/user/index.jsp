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
    div.box { padding: 30px; }
    table { border-collapse: collapse; width: fit-content; margin-bottom: 20px; }
    td { border: 1px solid #aaa; padding: 8px; }
  </style>
</head>
<body>
<div class="container">
  <div class="box">
    <h1>사용자 페이지</h1>
    <table>
      <tr>
          <td>로그인ID</td>
          <td><sec:authentication property="name" /></td>
      </tr>
      <tr>
          <td>이름</td>
          <td><sec:authentication property="principal.name" /></td>
      </tr>
      <tr>
          <td>학번</td>
          <td><sec:authentication property="principal.studentNumber" /></td>
      </tr>
      <tr>
          <td>이메일</td>
          <td><sec:authentication property="principal.email" /></td>
      </tr>
      <tr>
          <td>권한</td>
          <td><sec:authentication property="principal.userType" /></td>
      </tr>
    </table>
    <h3>대여중인 우산</h3>
    <table class="table table-bordered mt5">
    <thead>
    <tr>
    	<th>대여번호</th><th>대여일</th><th>반납일</th><th>위치</th><th>반납하기</th></tr></thead>
    	<tbody>
    	<c:forEach var="rental" items="${rental}">
    	<tr>
    	<th>${ rental.rental_id }</th><th>${ rental.rentDate }</th><th>${ rental.returnDate }</th><th>${ rental.umbrella.location.locationName }</th>
    	<th><a href="returnDetail?userId=${ rental.user.id }" class="btn">반납</a>
		</th></tr></c:forEach>
    	</tbody>
    </table>
    <a class="btn" href="${R}logout_processing">로그아웃</a>
  </div>
</div>
</body>
</html>
