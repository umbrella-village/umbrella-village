<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:url var="R" value="/" />
<%@ include file="/WEB-INF/views/home/base.jsp"%>


<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${R}res/home.css">
<style>
div.box {
	padding: 50px;
	width: 300px;
}
</style>
</head>
<body>
	<div class="container">
		<div id="carouselExampleIndicators" class="carousel slide "
			data-bs-ride="carousel" style="margin-top:120px;">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="resources/img/main/slide1.png" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="resources/img/main/slide2.png" " class="d-block w-100"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="resources/img/main/slide3.png" " class="d-block w-100"
						alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>

	<div style="margin-top:50px;" class="container">
   <img  class = "main_image" style="width:1000px; width:100%; margin-bottom:20px; odject:fill;" src="resources/img/main/hr.png">
   <p class="font_center" style="color:gray; margin-bottom:0px;">이제 불필요한 우산소비는 그만!<br></p>
   <p class="font_center" style="margin-bottom:5px;">저희는 교내 우산 대여 웹 서비스 <b>'우산빌리지'</b> 입니다.</p>
   <img class="main_image" style="width:100px; margin-bottom:0px;" src="resources/img/main/우산빌리지.png">
   
   <p class="font_center" style="margin-bottom:0px;">저희 '우산빌리지'는 <br><b class="main_font_color">우산을 빌리다 + 우산을 빌릴 수 있는 마을</b>이라는 뜻으로 제작된 프로젝트입니다.<br></p>
   <p class="font_center" style="margin-bottom:50px;">'우산빌리지'는 갑작스러운 비에 예상치 못한 소비를 하는<br>
        교내 대학생을 위해 기획되었습니다.</p>
	<hr>
   
   <img  class = "main_image" style="width:90%; margin-top:50px; margin-bottom:50px;" src="resources/img/main/질문1.png"> 
   <img  class = "main_image" style="width:70%; margin-bottom:100px;" src="resources/img/main/설문1.png">
   
      
   <img  class = "main_image" style="width:90%; margin-bottom:10px;" src="resources/img/main/질문2.png">
   <img  class = "main_image" style="width:90%; " src="resources/img/main/말풍선1.png">
   <img  class = "main_image" style="width:90%; " src="resources/img/main/말풍선2.png">
   <img  class = "main_image" style="width:90%; margin-bottom:10px;" src="resources/img/main/말풍선3.png">

    <br><br>
    <img  class = "main_image" style="width:90%; margin-bottom:30px;" src="resources/img/main/결과도출.png">
    <p class="font_center" style="margin-bottom:30px;">많은 학생들은 학교에서 갑작스럽게 비가 올 때<br>
    타인에게 우산을 빌리거나, 편의점에서 일회용 우산을 구매하는 경우가 많습니다.<br>
학생들은 일회용 우산을 자주 구매하며 불필요한 소비를 했다는 것에 대해 기분이 좋지 않을 것입니다.<br>
저희가 제작한 교내 우산 대여 웹 서비스 <b class="main_font_color">'우산 빌리지'</b>는 이런 고민들을 해결할 수 있는 좋은 웹 서비스입니다.</p>
<img class="main_image" style="width:100px; margin-bottom:0px;" src="resources/img/main/우산빌리지.png">
    <img  class = "main_image" style="width:80%; margin-bottom:20px;" src="resources/img/main/메인테스트.png">
    <p class="font_center">더 자세한 이용방법을 알고싶다면? <a href="about">더보기</a></p>
    </div>
    
    
          <div class="fullscreen-bg">
         <img src="resources/img/main/start.png" />
         <div class="index_tool">
            <h3 class="nav-main-font main_font_color" >지금 바로 대여 서비스를 사용해보세요</h3>
            <p class="login_page">회원가입 후 다양한 우산빌리지의 서비스를 이용해주세요</p>
            <a class="btn btn-xl btn-outline-light" href="signUp">
            Sign up</a>
         </div>
      </div>
      <div style="margin-top:100px; text-align:center;" class="container">
      <!-- 나중에 추가할 요소 있을때 추가 -->
      <img  class = "main_image" style="width:90%; margin-bottom:10px;" src="resources/img/main/기부명단.png">
      <marquee  height="60" scrolldelay="10" behavior="scroll" direction="up">
      	<p>조세은</p><p>김예린</p><p>남채희</p><p>이사랑</p>
      </marquee>
      <p class="font_center" style="color:525252; margin: 40 0 0 0">나도 우산을 기부하고싶다면? <a href="about">더보기</a></p>
      </div>
   
<br><br>
	
</body>
</html>

<%@ include file="/WEB-INF/views/home/footer.jsp"%>