<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
</head>
<body>
<div class="container" style="margin-top:150px;">
  
     <h1 class="title">MYPAGE</h1><hr style="color: #5485ae; margin-bottom:50px;">  
   <form id="myinfo"> <br>
   <p class="title">Profile</p>
    <table>
    <div id="umimg"><img style="width:50%; margin-bottom:20px;" src="/resources/img/main/프로필.png">  
      <tr>
          <td class="blue">로그인ID</td>
          <td><sec:authentication property="name" /></td>
      </tr>
      <tr>
          <td class="blue">이름</td>
          <td><sec:authentication property="principal.name" /></td>
      </tr>
      <tr>
          <td class="blue">학번</td>
          <td><sec:authentication property="principal.studentNumber" /></td>
      </tr>
      <tr>
          <td class="blue">이메일</td>
          <td><sec:authentication property="principal.email" /></td>
      </tr>
      <tr>
          <td class="blue">권한</td>
          <td><sec:authentication property="principal.userType" /></td>
      </tr>  
    </table>
    <a class="btn btn-xl btn-outline-light" style="margin-top: 10px;" href="${R}logout_processing">로그아웃</a>
    </form>
    
    
    
     <div id="rentlist"> 
    <h3 class="list_txt"><i class="fa fa-check"></i> 현재 대여중인 우산</h3>
    <table class="table table-bordered mt5" style="margin-bottom:50px;">
    <thead>
    <tr>
    <thead>
       <th>우산번호</th><th>위치</th><th>대여일</th><th>반납하기</th></tr></thead>
       <tbody>
       <c:forEach var="myRentals" items="${myRentals}">
       <tr>
       <c:choose>
         <c:when test="${ myRentals.returnDate eq null }">
             <th>${ myRentals.umbrella.id }</th><th>${ myRentals.umbrella.location.locationName }</th>
             <th>${ myRentals.rentDate }</th>
            <th><form name="returnDetailSubmit" action="returnDetailSubmit" method="get" onsubmit="return check_f2()">
                  <input type="hidden" name= "myRentals.rental_id" id="myRentals.rental_id" value=${ myRentals.rental_id }>
                  <button class="returnbtn" type="submit">반납</button>
            </form></th>
         </c:when>
      </c:choose>
      </tr></c:forEach>
       </tbody>
    </table>
    
    
    <h3 class="list_txt"><i class="fa fa-check"></i> 과거 우산 대여 기록</h3>
    <table class="table table-bordered mt5" style="margin-bottom:300px;">
    <thead>
    <tr>
      <th>우산번호</th><th>위치</th><th>대여일</th><th>반납일</th></tr></thead>
       <tbody>
       <c:forEach var="myRentals" items="${myRentals}">
       <tr>
       <c:choose>
         <c:when test="${ !(myRentals.returnDate eq null) }">
             <th style="height:61.5px;">${ myRentals.umbrella.id }</th><th>${ myRentals.umbrella.location.locationName }</th>
             <th>${ myRentals.rentDate }</th><th>${ myRentals.returnDate }</th>
         </c:when>
      </c:choose>
      </tr></c:forEach>
       </tbody>
    </table>    
    </div>  
    
</div>  
<script>
   function check_f2(){
      returnConfirm = confirm("반납하시겠습니까?");
       if (returnConfirm == true){
          document.returnDetailSubmit.submit();
         }
         else
            return false;
      }
</script>      

</body>
</html>
<%@ include file="/WEB-INF/views/home/footer.jsp"%>