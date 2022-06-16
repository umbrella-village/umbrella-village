<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:url var="R" value="/" />
<%@ include file="/WEB-INF/views/home/base.jsp"%>
<c:url var="R" value="/" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="${R}res/astyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style>
   @media screen and (max-width: 770px) {
    
     aside{
       width:150px;
     }
     section {  
      margin-left: 130px; 
      } 
      h2{
        font-size: 20px;
      }
    
   }
 
</style>
</head>
<body>
    <div id="wrap" style="margin-top:100px;">
      <div class="tab_menu">
      <aside style="margin-top:80px;">
      <h1 class=title_font style="margin-top:5px; margin-left:20px;" >MENU</h1>
        <ul class="list">
        
          <li class="is_on"><a href="#intro" class="btn">우산 빌리지 소개</a></li>
          <li><a href="#howtouse" class="btn">서비스 이용 안내</a></li>
          <li><a href="#donate" class="btn">우산 기부 방법</a></li>
          <li><a href="#contact" class="btn">Contact</a></li>
        </ul>
      </aside>
      <section>
        <div class="cont_area">
        <div id="intro" class ="cont" style="display:block;">
        <article id="intro">
          <h2><a class=title_font style="color:#5485ae;">'우산 빌리지'</a> 는 무엇인가요?</h2> 
          <hr>         
             <br>   
             <div id="umimg"><img style="width:60%" src="resources/img/main/aboutmockup2.png">   
             </div>
             <h2 style="margin-top:50px; font-size: 25;"><b>안녕하세요!</b> 저희는 교내 우산 대여 웹 서비스 <b style="color:#5485ae;">'우산빌리지'</b>입니다.</h2>
             <p>교내 우산 대여 웹 서비스 '우산 빌리지'는 <a style="color:#5485ae;">우산을 빌리다 + 우산을 빌릴 수 있는 마을</a> 이라는 뜻으로 제작된 프로젝트입니다.</p>  
            <p>'우산 빌리지'는 갑작스러운 비에 예상치 못한 소비를 하는 교내 대학생을 위해 기획 되었습니다.<br>
            많은 학생들은 학교에서 갑작스럽게 비가 올 때, 타인에게 우산을 빌리거나, 편의점에서 일회용 우산을 구매하는 경우가 많습니다.<br>
          저희 교내 우산 대여 웹 서비스 '우산빌리지'는 이런 문제를 해결할 수 있습니다.</p>
          <br>
          <h2><i class="fa fa-bookmark"></i> 우산빌리지 서비스의 3대 원칙</h2>
          <div id="tables">
          <table>
            <tr>
              <th style='line-height: 200%'>
                1. 우산빌리지는 공공적 목적으로 활용합니다.<br>
                2. 성공회대 학생들을 위한 우산 시스템을 구축합니다.<br>
                3. 학생들의 개인정보를 철저히 보호합니다.
              </th>
            </tr>
          </table>
          </div>
        </article>    
        </div>
        <div id="howtouse" class="cont">    
        <article id="howtouse">
          <h2 class=title_font style="color:#5485ae;">서비스 이용 안내</h2>  
            <hr>
          <div id="wrapper"> 
          <h3> <i class="fa fa-info-circle"></i> 우산 대여 서비스 이용방법</h3>
            <ul class="guide-step" >
                <li>
                  <i class="fa fa-user-plus"></i>
                    <div class="title"> 가입하기 </div>
                    <div class="desc">홈페이지에서 학번과 이름을 통해 쉽게 가입하실 수 있습니다.</div>
                </li>
                <li>
                  <i class="fa fa-check"></i>
                    <div class="title"> 확인하기 </div>
                    <div class="desc">교내 우산 지도를 통해 학관마다 빌릴 수 있는 남아있는 우산 개수를 확인합니다.</div>
                </li>
                <li>
                  <i class="fa fa-school"></i>
                    <div class="title"> 대여하기 </div>
                    <div class="desc">우산이 남아있는 학관 중에서 원하는 장소를 선택하여 대여 버튼을 클릭을 통해 우산을 예약할 수 있습니다.</div>
                </li>
                <li>
                  <i class="fa fa-umbrella"></i>
                    <div class="title"> 우산이용 </div>
                    <div class="desc"> 대여한 우산이 있는 장소에 가서 우산 태그에 달린 번호를 확인 후 우산을 사용해주세요!</div>
                </li>
                <li>
                  
                  <i class="fa fa-school"></i>
                    <div class="title"> 우산반납 </div>
                    <div class="desc">사용이 끝난 우산은 대여했던 장소에 두고 반환 버튼을 클릭하여 반환합니다.</div>
                </li>
            </ul>
        </div>    
          <h3> <i class="fa fa-won-sign"></i> 이용요금</h3>
            <p>- 1회 이용당 1000원<br>- 우산 보관함 옆에 표시되어있는 박스에 요금 투입 후 사용 가능</p><br>
          <h3><i class="fa fa-school"></i> 대여 장소</h3>          
          <p>- 위치: 성공회대학교 정보과학관 2층, 나눔관 지하 1층</p>
        <br>
          <h3><i class="fa fa-clock"></i> 운영시간</h3>
          <p>- 월요일 ~ 금요일 9:00 ~ 18:00 <br>- 주말 휴무</p><br>

          <h3> <i class="fa fa-exclamation-circle"></i> 대여 유의사항</h3>
          <p>
            ● 대여 버튼을 누르게 되면 우산이 예약되며 마이페이지 우산대여목록에서 확인가능합니다. <br>
            ● 우산을 대여할 때 예약한 번호와 같은 번호의 우산인지 꼭 확인바랍니다 <br>
            ● 예약한 우산은 타인에게 양도 및 판매할 수 없으며,
             비정상적인 방법으로 참여하실경우 우산빌리지의 운영 정책에 따라 제재 받을 수 있습니다. <br>
            ● 기본 대여 기간은 주말을 제외한 1일입니다. <br>
            ● 대여 기간이 지연 될 경우, 사용자는 패널티를 받을 수 있으며, 기본으로 지연 반납료를 부과합니다. <br>
            ● 모든 사용 신청은 관리자가 특정 상황에 따라 철회할 수 있습니다. <br>
            ● 장기 대여의 경우, 관리자에게 문의 부탁드립니다. <br>
            ● 추가 문의사항은 개발자 연락처로 문의 부탁드립니다.<br><br>
          </p>
          
           <h3> <i class="fa fa-exclamation-triangle"></i> 반납 유의사항</h3>
          <p>
            ● 우산 반납 후, 관리자는 우산 상태를 확인하며 상태에 따라 사용자에게 반납 규정을 적용할 수 있습니다. <br>
            ● 우산 대여 지연시, 지연 반납료가 부과되며 하루마다 1000원씩 누적으로 부과됩니다. <br>
            ● 우산 훼손 시, 훼손복구의 책임으로 책임비 2000원을 받습니다. <br>
            ● 우산 분실 시, 분실복구의 책임으로 책임비 5000원을 받습니다. <br>
          </p>
        </article>
        </div>
        
      <div id="donate" class="cont">
        <article id="donate">
        <h2 class=title_font style="color:#5485ae;">우산 기부 방법</h2>  
          <hr>
          <p style="margin-top:30px;">
          저희 우산빌리지는 교내 학생들의 원활한 우산 대여를 위해 우산 기부 서비스를 받고 있습니다.<br>
          이용자분들은 필요없는 일회용 우산, 다회용 우산을 저희에게 기부해주시면 우산빌리지의 혜택을 받아 보실 수 있습니다. 
          </p>
          <h3 style="margin-top:50px;"> <i class="fa fa-info-circle"></i> 우산 기부 이용 방법</h3>

  		<div>
            <ul style="margin-top:30px;">               
                <li>
                  1. <i class="fa fa-comments"></i> 개발자에게 연락하기
                    <div>기부를 원한다는 우산이 있음을 개발자에게 알립니다.</div>
                </li>
                <br>
                <li>
                  2. <i class="fa fa-recycle"></i> 우산 상태 확인 
                    <div>개발자가 우산 상태가 대여 목적으로 사용 가능한지 확인한 후 연락을 드립니다. </div>
                </li>
                <br>
                 <li>
                  3. <i class="fa fa-umbrella"></i> 기부 완료 
                    <div >우산기부 성공! 혜택을 받아보세요!</div>
                </li>
                <br>
                <li>
                우산을 기부하고 싶으시다면 옆 메뉴 Contact  > 개발자 연락처를 통해 연락 부탁드립니다!
                </li>     
            </ul>
            
           <h3 style="margin-top:60px;"> <i class="fa fa-gift"></i> 우산 기부 혜택</h3>
           <ul style="margin-top:30px;">               
                <li>
                  1. <i class="fa fa-cart-plus"></i> 무료 우산 대여 서비스 2회 이용권
                    <div>
                    필요없는 우산을 기부하시면 우산빌리지의 우산 대여 서비스를 무료로 2회 제공합니다.
                    <br>
                    우산을 기부하시고, 급하게 우산이 필요할 때 우산빌리지의 우산을 이용해보세요!
                     </div>
                </li>
                <br>
                <li>
                  2. <i class="fa fa-address-card"></i> 메인 페이지의 기부 명단 이름 제공
                    <div>
                    필요없는 우산을 기부하시면 원하시는 분 한정으로, 메인 페이지 하단에 우산 기부 명단 이름이 표시됩니다.
                    <br>
                    우산을 기부하시고, 본인의 이름을 확인해보세요!            
                     </div>
                </li>
                <br>
                <li>
                그 외 다양한 혜택을 받아 보실 수 있도록 서비스를 준비하겠습니다. 많은 관심 부탁드립니다!
                <br>
                <img class="main_image" style="width:100px; margin:10 0 0 0px;" src="resources/img/main/우산빌리지.png">
                </li>     
            </ul>
            
        </div> 
        </article>
      </div>
      <div id="contact" class="cont">
        <article id="contact">
        <h2 class=title_font style="color:#5485ae;">CONTACT</h2>
          <hr>
          <p style="margin-top:30px;">안녕하세요! <br>          
            우산빌리지 홈페이지 방문을 진심으로 환영합니다. <br>            
            저희 우산빌리지는 비가 오는 날에 성공회대 학생들이 비에 맞지 않도록 우산을 대여하는 서비스를 제공하고 있습니다.  <br>
            성공회대 학생이 이용하는 만큼 저희 개발자 모두가 항상 열린 마음과 자세로 소통하여 성공회대와 함께 발전해 나갈 수 있도록 하겠습니다. <br>
            이 홈페이지가 성공회대생의 정보를 쉽게 접할 수 있고, 소통할 수 있는 통로가 되기를 바랍니다. <br>
            문의사항이 있다면 언제든지 아래 대표 연락처로 연락해주시기 바랍니다. 
            감사합니다.
            <br><br>
            <small>✉️ duck_sim@naver.com</small><br> <small>📞010-6686-2779</small>
            </p>
         <h3 style="margin-bottom:0px; margin-top:60;"><i class="fa fa-wrench"></i> 우산빌리지 Github </h3>
           <a href="https://github.com/umbrella-village" target='_blank'><img width="40px" height="40px" src="https://cdn-icons-png.flaticon.com/512/25/25231.png" ></a>
           <a style="color:gray;">아이콘을 클릭하면 우산빌리지의 Github 주소로 이동합니다.</a>     
         <br>
         <h3 style="margin-top:60;"><i class="fa fa-wrench"></i> Developer </h3>
         <table class="devinfo">
           <tr>
            <th><i class="fa fa-user"></i> 이름</th><th><i class="fa fa-envelope-open"></i> Github</th><th><i class="fa fa-envelope"></i> Email</th>
           </tr>
          <tr>
            <td>조세은</td> <td><a href="https://github.com/joseeun" target='_blank'>https://github.com/joseeun</a></td><td>duck_sim@naver.com</td>
         </tr>
         <tr>
          <td>김예린</td> <td><a href="https://github.com/candy2022" target='_blank'>https://github.com/candy2022</a></td><td>juno2020k@gmail.com</td>
         </tr>
       <tr>
        <td>남채희</td> <td><a href="https://github.com/chehhy" target='_blank'>https://github.com/chehhy</a></td><td>48chch@naver.com</td>
       </tr> 
       <tr>
         <td>이사랑</td> <td><a href="https://github.com/ra388" target='_blank'>https://github.com/ra388</a></td><td>ra993388@gmail.com</td>
       </tr>
         </table>
          
        </article>
      </div>
      </section>   
      </div>    
  </div>
  <script>
    const tabList = document.querySelectorAll('.tab_menu .list li');
    const contents = document.querySelectorAll('.tab_menu .cont_area .cont')
    let activeCont = ''; 
  
    for(var i = 0; i < tabList.length; i++){
      tabList[i].querySelector('.btn').addEventListener('click', function(e){
        e.preventDefault();
        for(var j = 0; j < tabList.length; j++){
         
          tabList[j].classList.remove('is_on');  
        
          contents[j].style.display = 'none';
        }  
        
        this.parentNode.classList.add('is_on');  
      
        activeCont = this.getAttribute('href');
        document.querySelector(activeCont).style.display = 'block';
      });
    }
  </script>
</body>
</html>
<%@ include file="/WEB-INF/views/home/footer.jsp"%>