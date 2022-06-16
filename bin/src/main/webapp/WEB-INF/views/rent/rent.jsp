<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${R}res/common.css">
<style>
div.box {
	padding: 80px;
	width: 300px;
}
</style>
</head>
<body>
<div class="box">

	<h1>우산 대여하기</h1>

<div class="container">
	<c:forEach var="location" items="${ locations }">
	<h3>${ location.locationName }</h3>
		<table class="list">
		<tbody>
			<c:forEach var="umbrella" items="${ location.umbrellas }">
			
				<c:choose>
					<c:when test="${ umbrella.rentedOrNot eq false }">
						<tr>
							<td>${ umbrella.id }</td>
							<td><img src="resources/img/umbrella/${ umbrella.fileName }.jpg" style="width: 100px; height: 100px;" /></td>
							<td><a href="rentDetail?umbrellaId=${ umbrella.id }" class="btn">대여</a>
						</tr>
					</c:when>
					
					<c:otherwise>
						<tr>
							<td>${ umbrella.id }</td>
							<td><img src="resources/img/umbrella/${ umbrella.fileName }.jpg" style="width: 100px; height: 100px;" /></td>
							<td><button type="button" disabled>대여 중</button>
						</tr>
					</c:otherwise>
				</c:choose>
				
			</c:forEach>
		</tbody>
		</table>
	</c:forEach>
</div>
</div>
</body>
</html>
