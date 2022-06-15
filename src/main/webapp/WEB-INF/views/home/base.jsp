<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${R}res/base.css">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" aria-label="Eighth navbar example">
    <div class="container">
      <a class="navbar-brand nav-main-font" href="/index">
      <img src="/resources/img/main/logo.png" class="logo_style" alt="...">
      우산빌리지</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" style="text-align: right;" id="navbarsExample07">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0 nav-font" >
				<li class="nav-item"><a class="nav-link" aria-current="page" href="/index">홈</a></li>
				<li class="nav-item"><a class="nav-link" aria-current="page" href="/about">공지사항</a></li>
				<li class="nav-item"><a class="nav-link" aria-current="page" href="/rent">우산대여</a></li>
				
				<sec:authorize access="authenticated">
					<li class="nav-item"><a class="nav-link" aria-current="page" href="${R}user/index">마이페이지</a></li>
				</sec:authorize>
				
				<li class="nav-item"><a class="nav-link" aria-current="page" href="/signUp">회원가입</a></li>
				
				<sec:authorize access="not authenticated">
					<li class="nav-item"><a class="nav-link" aria-current="page" href="${R}login">로그인</a></li>
				</sec:authorize>
				
				<sec:authorize access="authenticated">
					<li class="nav-item"><a class="nav-link" aria-current="page" href="${R}logout_processing">로그아웃</a></li>
				</sec:authorize>
				
        </ul>

      </div>
    </div>
 </nav>
