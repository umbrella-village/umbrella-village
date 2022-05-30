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
div.box { float: left; width: 200px; height: 100px; text-align: center; padding: 100px; margin:10px; } 
</style>
</head>
<body>

	<h1>우산 대여하기</h1>
	
		<div class="box" id="umbrella">
		<img src="resources/img/umbrella/${ umbrella.fileName }.jpg" style="width: 100px; height: 100px;" /><br>
		우산번호 : ${ umbrella.id }<br>
		건물 : ${ umbrella.location.locationName }<br>
		</div>
	
		<div class="box" id="cautions">
		주의사항<br><br>
		이용방법, 주의사항 등
		</div>
	
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
		<form name="rentDetailSubmit" action="rentDetailSubmit" method="get" onsubmit="return check_f()">
			<input type="hidden" name= "umbrella_id" id="umbrella_id" value=${ umbrella.id }>
			<label><input type="checkbox" name= "agree" id="agree" value="agree" />위 사항에 동의하시겠습니까?</label><br><br>
			<button type="submit">대여</button> <a href="rent" class="btn">취소</a>
		</form>
		
		<script>
		function check_f(){
			var agreeCheckbox = document.getElementById('agree');
			
			if (!agreeCheckbox.checked) {
	    		alert("주의사항에 동의해주세요.");
				return false;
	   		 }
			
			else document.agreeForm.submit();
		}
		</script>
</body>
</html>