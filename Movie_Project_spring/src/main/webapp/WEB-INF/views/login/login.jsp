<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href="../css/login/signup.css" rel="stylesheet" type="text/css">
 <jsp:include page="../include/header.jsp"></jsp:include>
 
 	<link rel="stylesheet" href="../css/style/style.css">
</head>
<body>
  <div class="box_case">
    <!--좌우크기조절-->
    <div class="title">
      <a href="../../../../" class="main_back">
        <img src="img/root/메인아이콘_흰.jpg" alt="메인아이콘" />
        <div class="title_name">Miner Cinema</div>
      </a>
    </div>
    <div class="title_right">
      <a href="such"><img src="img/root/돋보기화이트.jpg" alt="돋보기아이콘" style="height: 22px; width: 25px;" /></a>
      <div class="login_link"><a href="../../../../center" style="color: black;">고객센터</a></div>
      <div class="login_link"><a href="../../../../login" style="color: black;">로그인</a></div>
    </div>
  </div>
  <div class="black_box">
            <ul id="main-menu">
            <li><a href="../../../../ticket/Ticketing">예매</a>
                <ul id="sub-menu">
                  <li><a href="../../../../ticket/Ticketing" aria-label="subemnu">예매하기</a></li>
                  <li><a href="../../../../ticket/TicketInformation" aria-label="subemnu">예매안내</a></li>
                </ul>
              </li>
              <li><a href="../../../../movie_info/NowPlayRank">영화</a>
                <ul id="sub-menu">
                  <li><a href="../../../../movie_info/NowPlayRank" aria-label="subemnu">현재 상영작</li></a>
                  <li><a href="../../../../movie_info/Expected" aria-label="subemnu">상영예정작</li></a>
                  <li><a href="../../../../movie_info/MovieGuide" aria-label="subemnu">영화안내</li></a>
                </ul>
              </li>
              <li><a href="../../../../event/continue_Event">이벤트</a>
                <ul id="sub-menu">
                  <li><a href="../../../../event/continue_Event" aria-label="subemnu">진행중인 이벤트</a></li>
                  <li><a href="../../../../event/end_Event" aria-label="subemnu">종료된 이벤트</a></li>
                </ul>
              </li>
            </ul>
  </div>
  <!--여기까지 기본 위 배너 입니다!-->
     <div class="signup_box">
      
      <div class="center">
       <h1>회원가입</h1>
       <form id="signup_form" method="post">
         <input type="hidden" name="checkId">
         <div class="txt_field">								
           <input type="text" name="id" required>							
           <label>아이디:</label>		
           <span><button type="button" onclick="check_id_Async()">중복확인</button></span>			
         </div>
         <div class="txt_field">
           <input type="password" name="passwd" required>
           <p>*(특수문자, 문자, 숫자 포함 형태의 8~15자리 이내)</p>							
           <label>비밀번호:</label>
         </div>						
         
         <div class="txt_field">				
           <input type="password" name="passwd_confirm" required>
           <span></span>
           <label>비밀번호 확인:</label>
         </div>
         <div class="txt_field">				
           <input type="text" name="email" required>
           <span></span>
           <label>이메일:</label>
         </div>			
         <div class="txt_field">				
           <input type="text" name="tel" required>
           <span></span>
           <label>전화번호:</label>
         </div>       
         <div class="pass"></div>
              <input type="submit" value="회원가입" onclick="signup()">			
          <div class="signup_link">
               <a href="/login.html">로그인 하러 가기</a>  
           </div> 
       </form>
     
 </div>
 </div>

     <!-- 제일 최하단 -->

<div class="bottom">
    <!--고객센터-->
    <hr class="lhr5"/>
    <div class="inner_case_bottom">
        <div class="bottom_text_1">고객센터</div>
        <div class="bottom_text_2">평일 08:00 ~ 19:30, 토요일,공휴일
            휴무&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;02-1234-5678&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;customer@projectCinema.co.kr</div>
        <div class="bottom_text_3">상호 : (주)프로젝트영화 &nbsp;&nbsp;&nbsp; 대표자 : 2조<br>
            주소 : 대전광역시 동구 우암로 352-21 (주)프로젝트영화

            <br><br>사업자 등록번호 : 123-45-6789<br>TEL : 02-1234-5678 Email : customer@projectCinema.co.kr
        </div>
        <div class="bottom_text_4">© ProjectCinema Co., Ltd All rights reservedv.</div>
    </div>
    </div>
    <jsp:include page="../include/body.jsp"></jsp:include>
</body>
</html>