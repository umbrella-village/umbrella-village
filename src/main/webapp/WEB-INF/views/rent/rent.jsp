<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<c:url var="R" value="/" />
<%@ include file="/WEB-INF/views/home/base.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${R}res/common.css">
<link rel="stylesheet" href="${R}res/rent.css">
<style>
div.box {
	padding: 80px;
	width: 1000px;
}
</style>
</head>
<body>
	<div class="container" style="margin-top: 150px;">
		<hr style="color: #5485ae; margin-bottom: 50px;">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d791.4641526588849!2d126.82554189688673!3d37.487709959260876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b6261e34e06e3%3A0xcbd0485192bc91e6!2z7ISx6rO17ZqM64yA7ZWZ6rWQ!5e0!3m2!1sko!2skr!4v1655309332722!5m2!1sko!2skr"
			width="1000" height="450" style="border: 0;" allowfullscreen=""
			loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		<hr style="color: #5485ae; margin-top: 50px;">
		<div class="container">


			<c:forEach var="location" items="${ locations }">
				<h1 class="title" style="margin-bottom: 10px; margin-top:50px;">${ location.locationName }<br></h1>
				<div class="row row-cols-1 row-cols-md-5 mb-5 text-center">
					<br>
					<c:forEach var="umbrella" items="${ location.umbrellas }">
						<c:choose>
							<c:when test="${ umbrella.rentedOrNot eq false }">
								<div class="col">
									<div class="card mb-4 rounded-3 shadow-sm">
										<div class="card-header py-3">
											<h4 class="my-0 fw-normal">${ umbrella.id }</h4>
										</div>
										<div class="card-body">
											<img src="resources/img/umbrella/${ umbrella.fileName }.png"
												style="width: 100px; height: 100px;" />
											<ul class="list-unstyled mt-3 mb-4">
												<li>우산 ID: ${ umbrella.id }</li>
												<li>우산 위치: ${ location.locationName }</li>
											</ul>
											<a href="rentDetail?umbrellaId=${ umbrella.id }"
												class="btn btn-xl btn-outline-light">대여</a>
										</div>
									</div>
								</div>
							</c:when>

							<c:otherwise>
								<div class="col">
									<div class="card mb-4 rounded-3 shadow-sm">
										<div class="card-header py-3">
											<h4 class="my-0 fw-normal">${ umbrella.id }</h4>
										</div>
										<div class="card-body">
											<img src="resources/img/umbrella/${ umbrella.fileName }.png"
												style="width: 100px; height: 100px;" />
											<ul class="list-unstyled mt-3 mb-4">
												<li>우산 ID: ${ umbrella.id }</li>
												<li>우산 위치: ${ location.locationName }</li>
											</ul>
											<button type="button" class="btn btn-xl btn-outline-rent">대여
												중</button>
										</div>
									</div>
								</div>

							</c:otherwise>


						</c:choose>

					</c:forEach>
					</div>
			</c:forEach>


		


	</div>
	</div>
</body>
</html>
<%@ include file="/WEB-INF/views/home/footer.jsp"%>