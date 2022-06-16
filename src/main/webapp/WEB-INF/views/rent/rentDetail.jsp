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
<link rel="stylesheet" href="${R}res/rent.css">
<style>
  div.box {  padding: 60px; width: 1500px; }

</style>


</head>
<body>
<div class="box container" style="margin-top:150px; margin-bottom:150px; text-align:center; ">
   
   <table class="list">
   <th>
   <img src="resources/img/umbrella/${ umbrella.fileName }.png" style="width: 200px; height: 200px;" /><br>
      <p style="font-size:20; margin:20 0 20 0px;">
      <a style="color: #5485ae;">우산번호</a> : ${ umbrella.id }<br><br>
       <a style="color: #5485ae;">건물</a> : ${ umbrella.location.locationName }<br>
      </p>
   
   </th>
   <th>
      <h3 class="reading title" style="margin-top:30px; color: #5485ae;">이용안내</h3>
      <p class="reading"><i class="fa fa-exclamation-circle"></i> 대여 버튼을 누르게 되면 우산이 예약되며 마이페이지 우산대여목록에서 확인가능합니다.</p>
      <p class="reading"><i class="fa fa-exclamation-circle"></i> 우산을 대여할 때 예약한 번호와 같은 번호의 우산인지 꼭 확인바랍니다.</p>
      <p class="reading"><i class="fa fa-exclamation-circle"></i> 예약한 우산은 타인에게 양도 및 판매할 수 없으며, 비정상적인 방법으로 참여하실경우 운영 정책에 따라 제재 받을 수 있습니다.</p>
      <p class="reading"><i class="fa fa-exclamation-circle"></i> 기본 대여 기간은 주말을 제외한 1일입니다.</p>
      <p class="reading"><i class="fa fa-exclamation-circle"></i> 대여 기간이 지연 될 경우, 사용자는 패널티를 받을 수 있으며, 기본으로 지연 반납료를 부과합니다.</p>
      <p class="reading"><i class="fa fa-exclamation-circle"></i> 모든 사용 신청은 관리자가 특정 상황에 따라 철회할 수 있습니다.</p>
      <p class="reading"><i class="fa fa-exclamation-circle"></i> 장기 대여의 경우, 관리자에게 문의 부탁드립니다.</p>
      
      
      <h3 class="reading title" style="margin-top:30px; color: #5485ae;">반납규정</h3>
      <p class="reading"><i class="fa fa-exclamation-circle"></i> 우산 반납 후, 관리자는 우산 상태를 확인하며 상태에 따라 사용자에게 반납 규정을 적용할 수 있습니다.</p>
      <p class="reading"><i class="fa fa-exclamation-circle"></i> 우산 대여 지연시, 지연 반납료가 부과되며 하루마다 1000원씩 누적으로 부과됩니다.</p>
      <p class="reading"><i class="fa fa-exclamation-circle"></i> 우산 훼손 시, 훼손복구의 책임으로 책임비 2000원을 받습니다.</p>
      <p class="reading" style="margin-bottom:30px;"><i class="fa fa-exclamation-circle"></i> 우산 분실 시, 분실복구의 책임으로 책임비 5000원을 받습니다.</p>
      
      
      
      <form name="rentDetailSubmit" action="rentDetailSubmit" method="get" onsubmit="return check_f()">
         <input type="hidden" name= "umbrella_id" id="umbrella_id" value=${ umbrella.id }>
   
   </th>
   </table>
   
         <form name="rentDetailSubmit" action="rentDetailSubmit" method="get" onsubmit="return check_f()">
         <input type="hidden" name= "umbrella_id" id="umbrella_id" value=${ umbrella.id }>
         <label><input type="checkbox" name= "agree" id="agree" value="agree" style="margin-right:10px;" />   위 사항에 동의하시겠습니까?</label><br><br>
         <button class="btn btn-xl btn-outline-light" type="submit">대여</button> <a href="rent" class="btn btn-xl btn-outline-rent">취소</a>
      </form>
   
   </div>
   
   
   
         <script>
      function check_f(){
         var agreeCheckbox = document.getElementById('agree');
         
         if (!agreeCheckbox.checked) {
             alert("위 안내사항에 동의 후 대여가 가능합니다.");
            return false;
             }
         
         else document.agreeForm.submit();
      }
      </script>
   
</body>
</html>
<%@ include file="/WEB-INF/views/home/footer.jsp"%>