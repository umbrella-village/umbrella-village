<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
    * {
    margin: 0; padding: 0;
    box-sizing: border-box;
    top:30px;
    padding-top: 25px;
  }    
   
 table {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;  
  }  
   table td {
    width: 350px;
    padding: 10px;  
  }
 
  #rentlist{       
    margin-right: 350px; 
  }
 .returnbtn{         
    border-radius: 7px;  
    width: 4em;    
    cursor: pointer;
    text-align: center;
    background: none;      
    font-size: 15px;    
    outline: 0;
    border: 2px solid #5485ae;    
    color:white;
    background-color: #5485ae;
  }
.returnbtn:hover{
 	color: #5485ae;
    background-color: white;
 }
 h1{ 
   text-align: center;
   color:#5485ae;
 }
.btn{
	color: #5485ae;
}
#myinfo{	
	float: right;      
    bottom: 0;
    width: 310px; 
    height: 350px;
    padding: 25px;
    text-align: center;
    box-shadow: 0 0 4px lightgray, 2px 2px 4px lightgray;
	}
    
  </style>
</head>
<body>
<div class="container" style="margin-top:150px;">
  
     <h1>마이 페이지</h1><hr style="color: #5485ae; margin-bottom:50px;">  
   <form id="myinfo"> <br>
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
    </form>
     <div id="rentlist"> 
    <h3>현재 대여중인 우산</h3>
    <table class="table table-bordered mt5">
    <thead>
    <tr>
       <th>우산사진</th><th>우산번호</th><th>위치</th><th>대여일</th><th>반납하기</th></tr></thead>
       <tbody>
       <c:forEach var="myRentals" items="${myRentals}">
       <tr>
       <c:choose>
         <c:when test="${ myRentals.returnDate eq null }">
            <th><img src="resources/img/umbrella/${ umbrella.fileName }.jpg" style="width: 50px; height: 50px;" /></th>
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
    
    
    <h3>과거 우산 대여기록</h3>
    <table class="table table-bordered mt5">
    <thead>
    <tr>
       <th>우산사진</th><th>우산번호</th><th>위치</th><th>대여일</th><th>반납일</th></tr></thead>
       <tbody>
       <c:forEach var="myRentals" items="${myRentals}">
       <tr>
       <c:choose>
         <c:when test="${ !(myRentals.returnDate eq null) }">
            <th><img src="resources/img/umbrella/${ umbrella.fileName }.jpg" style="width: 50px; height: 50px;" /></th>
             <th>${ myRentals.umbrella.id }</th><th>${ myRentals.umbrella.location.locationName }</th>
             <th>${ myRentals.rentDate }</th><th>${ myRentals.returnDate }</th>
         </c:when>
      </c:choose>
      </tr></c:forEach>
       </tbody>
    </table>    
    </div>
   <a class="btn" href="${R}logout_processing">로그아웃</a>    
    
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