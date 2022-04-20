<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="${R}res/common.css">
  <style>
  	@import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Poor+Story&display=swap');
  	body{font-family: 'Cute Font', cursive;} 	
  	.box{ width: 40%;   height: 500px;  background: white;  border-radius: 20px;
  display: flex;  justify-content: center;  align-items: center;  flex-direction: column;}
    h1 { text-align: center; font-size: 50px; }
    .container { display: flex;	justify-content: center;  align-items: center;  min-height: 50vh; }
    form { padding: 10px 30px 20px 30px; width: 250px; background-color: white; }
    button { margin-top: 20px; margin-left: 5px; margin-bottom: 10px;}    
    .error { color: red; }
    input{width: 100%;  height: 50px; }
   td{font-size: 30px;}
    .btn{  width: 90%;   height: 50px;   border: 0;   outline: none;
  border-radius: 40px;   background: linear-gradient(to left, rgb(55, 88, 237), rgb(162, 216, 250));
  color: white;   font-size: 1.2em;   letter-spacing: 2px;}
  </style>
</head>
<body>
<div class="container">
  <form method="post" action="${R}login_processing" class="box">
    <h1>우산 빌리지</h1>
    
    <sec:authorize access="not authenticated">
      <a href="index" class="link">Home</a>
      <a href="about" class="link">About</a>
      <a href="rent" class="link">Rent</a>
      <a href="login" class="link">Mypage</a>
      <a href="signUp" class="link">SignUp</a>
      <a class="link" href="${R}login">Login</a>
    </sec:authorize>


    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <table>   
      <tr>
       <td>아이디</td>
       </tr>
       <tr>
        <td><input type="text" placeholder="아이디" name="userid" /></td>       
      </tr> 
      <tr>
         <td>비밀번호</td></tr>
         <tr>
        <td><input type="password" placeholder="비밀번호" name="passwd" /></td>
      </tr>
    </table>
    <button type="submit" class="btn">로그인</button>
    
    <a href="signUp" class="signup">회원 가입</a>

    <c:if test="${ param.error != null }">
      <div class="error">로그인 실패</div>
    </c:if>
  </form>
</div>
</body>
</html>
