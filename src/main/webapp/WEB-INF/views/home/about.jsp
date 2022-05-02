<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="R" value="/" />
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
    <div id="wrap">
      <div class="tab_menu">
      <aside>
        <h1>About</h1>
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
          <h2>'우산 빌리지'란?</h2> 
          <hr>         
             <br>   
             <div id="umimg"><img width="60%" src="https://cdn.pixabay.com/photo/2016/03/26/23/00/umbrellas-1281751__340.jpg">   
             </div>
              <h2>  교내 우산 대여 웹 서비스 '우산 빌리지'는 우산을 빌리다 + 우산을 빌릴 수 있는 공간 이라는 뜻의 의미가 있습니다.
            </h2>
             
            <p>'우산 빌리지'는 갑작스러운 비에 예상치 못한 소비를 하는 교내 대학생을 위해 기획 되었습니다.
            많은 학생들은 학교에서 갑작스럽게 비가 올 때, 타인에게 우산을 빌리거나, 편의점에서 일회용 우산을 구매하는 경우가 많습니다.
          교내 우산 대여 웹 서비스 우산빌리지는 이런 문제를 해결할 수 있습니다.
          </p><br>
          <h2>우산 빌리지 서비스의 3대 원칙</h2>
          <div id="tables">
          <table>
            <tr>
              <th style='line-height: 200%'>
                1. 우산빌리지는 공공적 목적으로 활용<br>
                2. 성공회대 학생들을 위한 우산 시스템 구축<br>
                3. 학생들의 개인정보를 철저히 보호
              </th>
            </tr>
          </table>
          </div>
        </article>    
        </div>
        <div id="howtouse" class="cont">    
        <article id="howtouse">
          <h2>서비스 이용 안내</h2>  
            <hr>
          <div id="wrapper"> 
            <div class="sub_tit">우산 대여 서비스 이용방법</div>
            <ul class="guide-step">
                <li>
                  <i class="fa fa-user-plus"></i>
                    <div class="title"> 가입하기 </div>
                    <div class="desc">앱 또는 홈페이지에서 학번과 이름을 통해 쉽게 가입하실 수 있습니다.</div>
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
                    <div class="desc"> 대여한 우산이 있는 장소에 가서 우산 번호 확인 후 사용해주세요!</div>
                </li>
                <li>
                  
                  <i class="fa fa-school"></i>
                    <div class="title"> 우산반납 </div>
                    <div class="desc">사용이 끝난 우산은 대여했던 장소에 두고 반환 버튼을 클릭하여 반환합니다.</div>
                </li>
            </ul>
        </div>    
          <h3> <i class="fa fa-won-sign"></i> 이용요금</h3>
            <p>1000원으로 예상</p><br>
          <h3><i class="fa fa-school"></i> 대여 장소</h3>          
          <p>- 위치: 성공회대학교 정보과학관 2층, 나눔관 동아리방</p>
        <br>
          <h3><i class="fa fa-clock"></i> 운영시간</h3>
          <p>- 월요일 ~ 금요일 9:00 ~ 18:00 </p><br>

          <h3> <i class="fa fa-exclamation"></i> 대여 유의사항</h3>
          <p>
            ● 대여 버튼을 누르게 되면 우산이 예약되며 마이페이지 우산대여목록에서 확인가능합니다. <br>
            ● 예약한 우산은 타인에게 양도 및 판매할 수 없으며,
             비정상적인 방법으로 참여하실경우 우산빌리지의 운영 정책에 따라 제재 받을 수 있습니다. <br>
             
            ● 우산을 대여할 때 예약한 번호와 같은 번호의 우산인지 꼭 확인바랍니다 <br>
            ● 추가 문의사항은 개발자 연락처로 문의 부탁드립니다.
          </p>
        </article>
        </div>
        
      <div id="donate" class="cont">
        <article id="donate">
          <h2>우산 기부 방법</h2>
          <hr>
          <!-- 우산 사진 옆에 우산빌리지 로고 넣으면 좋을거같음-->
          <img width="30%" src="https://cdn.pixabay.com/photo/2013/07/13/11/26/umbrella-158164__340.png">
          
  <div>
            <ul>               
                <li>
                  1. <i class="fa fa-address-book"></i> 개발자에게 연락하기
                    <div >기부를 원한다는 우산이 있음을 개발자에게 알리기.</div>
                </li>
                <br>
                <li>
                  2. <i class="fa fa-umbrella"></i> 우산 기부하기 
                    <div >개발자와 연락해서 우산기부 성공! </div>
                </li>
               
            </ul>
        </div> 
          <p>
           우산을 기부하고 싶으시다면 아래 Contact  > 개발자 연락처로 연락주세요!
         </p>
        </article>
      </div>
      <div id="contact" class="cont">
        <article id="contact">
          <h2>contact</h2> 
          <hr>
          <p>안녕하십니까. <br>          
            우산빌리지 홈페이지 방문을 진심으로 환영합니다. <br>            
            우산빌리지는 비가 오는 날에 성공회대생들이 비에 맞지 않도록 우산을 제공하고 있습니다.  <br>
            개발자 모두가 항상 열린 마음과 자세로 소통하여 성공회대와 함께 발전해 나갈 수 있도록 하겠습니다. <br>
            이곳 홈페이지가 성공회대생의 정보를 쉽게 접할 수 있고, 소통할 수 있는 통로가 되기를 바랍니다. <br>
            문의사항이 있다면 언제든지 아래 연락처로 연락해주시기 바랍니다. 
            감사합니다.</p> <br>
         <h3>우산 빌리지 깃허브 주소 </h3>
           <a href="https://github.com/umbrella-village"><img width="40px" height="40px" src="https://cdn.pixabay.com/photo/2022/01/30/13/33/github-6980894__340.png" ></a>
         <br><h3>우산 빌리지 개발자 </h3>
         <table class="devinfo">
           <tr>
            <th><i class="fa fa-user"></i> 이름</th><th><i class="fa fa-envelope-open"></i> 깃허브</th><th><i class="fa fa-envelope"></i> 이메일</th>
           </tr>
           <tr>
             <td>이사랑</td> <td>https://github.com/ra388</td><td>ra993388@gmail.com</td>
          </tr>
          <tr>
            <td>조세은</td> <td>https://github.com/joseeun</td><td>duck_sim@naver.com</td>
         </tr>
         <tr>
          <td>김예린</td> <td>https://github.com/candy2022</td><td>juno2020k@gmail.com</td>
         </tr>
       <tr>
        <td>남채희</td> <td>https://github.com/chehhy</td><td>48chch@naver.com</td>
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