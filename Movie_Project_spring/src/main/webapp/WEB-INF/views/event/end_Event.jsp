<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <jsp:include page="../include/header.jsp"></jsp:include>
<link href="../css/event.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../css/style/style.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
  <script>
    $(function(){
      const con = ".scriptbox";
      const con2 =".scriptbox2";
      const info =".end_event";
      const info4 =".ing_event_2";
      const info2 =".ing_event";



      $(".end_event").click(function() { 
      $(con).css('display', 'none');
      $(con2).css('display', 'block');
      });

      $(info2).click(function() { 
      $(con).css('display', 'block');
      $(con2).css('display', 'none');
      });
      
      $(".information_cancel_copy").click(function() { 
      $(con).css('display', 'none');
      $(con2).css('display', 'block');
      });

      $(info4).click(function() { 
      $(con).css('display', 'block');
      $(con2).css('display', 'none');
      });
    });
  </script>

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
	                <div class="login_link"><a href="serviceCenter/CenterService" >고객센터</a></div>
	              	<c:if test="${sessionScope.member.grade==0}">	<div class="login_link"><a href="login">로그인</a></div></c:if>
	              	<c:if test="${sessionScope.member.grade>0}">	<div class="login_link"><a href="logout">로그아웃</a></div></c:if>
	            </div>
	            <c:if test="${sessionScope.member.grade==1}">
	             <div class="title_plus_text">${sessionScope.member.userName} 사용자님 안녕하세요&nbsp;&nbsp;&nbsp; <a href="myPage">마이페이지</a></div>
	             </c:if>
	             <c:if test="${sessionScope.member.grade==2}">
	             <div class="title_plus_text">${sessionScope.member.userName} 영화 관리자님 안녕하세요&nbsp;&nbsp;&nbsp; <a href="">영화관 관리</a></div>
	             </c:if>
	             <c:if test="${sessionScope.member.grade>=10}">
	             <div class="title_plus_text">${sessionScope.member.userName} 웹 관리자님 안녕하세요&nbsp;&nbsp;&nbsp; <a href="">웹 관리</a></div>
	             </c:if>
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
                  <li><a href="../../movie_info/NowPlayRank" aria-label="subemnu">현재 상영작</a></li>
                  <li><a href="../../movie_info/Expected" aria-label="subemnu">상영예정작</a></li>
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
     <div class="whitebox">
      <div class="eventbox">
        <div class="eventboxtext">ì´ë²¤í¸</div>
      </div>

      <!-- ìëê° ì¬ë¼ì´ë ë¶ë¶ìëë¤ ê±´ë¤ì§ë§ì¸ì -->
      <div class="slide">
        <ul>
          <li>
            <div class="swipetextbox">
            <span class="swipetext">[ì´ê²ì ì¸í¸ë¼ ìì²­ë ìíìëë¤.] ê·¸ê²ì ë°ë¡ ì´ìí ëë¼ì ìíì</span>
           </div>
          </li>


          <li>
            <div class="swipetextbox">
              <span class="swipetext">[ì´ê²ì ì¸í¸ë¼ ìì²­ë ìíìëë¤.] ê·¸ê²ì ë°ë¡ ì´ìí ëë¼ì ìíì</span>
             </div>
          </li>
          <li>
            <div class="swipetextbox">
              <span class="swipetext">[ì´ê²ì ì¸í¸ë¼ ìì²­ë ìíìëë¤.] ê·¸ê²ì ë°ë¡ ì´ìí ëë¼ì ìíì</span>
             </div>
          </li>
          <li>  <div class="swipetextbox">
            <span class="swipetext">[ì´ê²ì ì¸í¸ë¼ ìì²­ë ìíìëë¤.] ê·¸ê²ì ë°ë¡ ì´ìí ëë¼ì ìíì</span>
           </div></li>
        </ul>
      </div>
    </div>
      <!-- ì¬ë¼ì´ë ìëë¶ë¶ ëª©ë¡ìëë¤ -->
 <!-- íì¬ ì§íì¤ì¸ ì´ë²¤í¸ -->
<div class="whitebox2">
      <div class="scriptbox">

      <div class="ing_end_event_box">
        <div class="ing_event">
          <span class="ing_event_text">íì¬ ì§íì¤ì¸ ì´ë²¤í¸</span>
        </div>
        <div class="end_event">
          <span class="end_event_text">ì¢ë£ë ì´ë²¤í¸</span>
        </div>
      </div>

     
      <div class="event_list_box">
        <div class="evnet_list_text_box">
          <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
          <div class="event_list_text">
            <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
            <span class="event_list_date">2022.04.05</span>
          </div>
        </div>

        <div class="evnet_list_text_box">
          <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
          <div class="event_list_text">
            <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
            <span class="event_list_date">2022.04.05</span>
          </div>
        </div>

        <div class="evnet_list_text_box">
          <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
          <div class="event_list_text">
            <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
            <span class="event_list_date">2022.04.05</span>
          </div>
        </div>

        <div class="evnet_list_text_box">
          <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
          <div class="event_list_text">
            <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
            <span class="event_list_date">2022.04.05</span>
          </div>
        </div>


        <div class="evnet_list_text_box">
          <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
          <div class="event_list_text">
            <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
            <span class="event_list_date">2022.04.05</span>
          </div>
        </div>

        <div class="evnet_list_text_box">
          <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
          <div class="event_list_text">
            <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
            <span class="event_list_date">2022.04.05</span>
          </div>
        </div>

        <div class="evnet_list_text_box">
          <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
          <div class="event_list_text">
            <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
            <span class="event_list_date">2022.04.05</span>
          </div>
        </div>

        <div class="evnet_list_text_box">
          <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
          <div class="event_list_text">
            <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
            <span class="event_list_date">2022.04.05</span>
          </div>
        </div>

        <div class="evnet_list_text_box">
          <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
          <div class="event_list_text">
            <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
            <span class="event_list_date">2022.04.05</span>
          </div>
        </div>

        <div class="evnet_list_text_box">
          <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
          <div class="event_list_text">
            <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
            <span class="event_list_date">2022.04.05</span>
          </div>
        </div>
      </div>
      <!-- íì¬ ì§íì¤ì¸ ì´ë²¤í¸ -->


      <div class="pager ">
        <div class="page_wrap">
          <div class="page_nation">
             <a class="arrow pprev" href="#"></a>
             <a class="arrow prev" href="#"></a>
             <a href="#" class="active">1</a>
             <a href="#">2</a>
             <a href="#">3</a>
             <a href="#">4</a>
             <a href="#">5</a>
             <a href="#">6</a>
             <a href="#">7</a>
             <a href="#">8</a>
             <a href="#">9</a>
             <a href="#">10</a>
             <a class="arrow next" href="#"></a>
             <a class="arrow nnext" href="#"></a>
          </div>
        </div>
       </div>
      </div>

     </div>
    
<!-- íì¬ ì§íì¤ì¸ ì´ë²¤í¸ ëë -->


<!-- ì¢ë£ëì´ë²¤í¸ -->
<div class="scriptbox2">
  <div class="ing_end_event_box">
    <div class="ing_event_2">
      <span class="ing_event_text_2">íì¬ ì§íì¤ì¸ ì´ë²¤í¸</span>
    </div>
    <div class="end_event">
      <span class="end_event_text_2">ì¢ë£ë ì´ë²¤í¸</span>
    </div>
  </div>

  <div class="event_list_box">
    <div class="evnet_list_text_box">
      <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
      <div class="event_list_text">
        <a href=""><span class="event_list_title">ì¢ë£ëì´ë²¤í¸íì´ì§</span></a>
        <span class="event_list_date">2022.04.05</span>
      </div>
    </div>

    <div class="evnet_list_text_box">
      <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
      <div class="event_list_text">
        <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
        <span class="event_list_date">2022.04.05</span>
      </div>
    </div>

    <div class="evnet_list_text_box">
      <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
      <div class="event_list_text">
        <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
        <span class="event_list_date">2022.04.05</span>
      </div>
    </div>

    <div class="evnet_list_text_box">
      <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
      <div class="event_list_text">
        <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
        <span class="event_list_date">2022.04.05</span>
      </div>
    </div>


    <div class="evnet_list_text_box">
      <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
      <div class="event_list_text">
        <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
        <span class="event_list_date">2022.04.05</span>
      </div>
    </div>

    <div class="evnet_list_text_box">
      <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
      <div class="event_list_text">
        <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
        <span class="event_list_date">2022.04.05</span>
      </div>
    </div>

    <div class="evnet_list_text_box">
      <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
      <div class="event_list_text">
        <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
        <span class="event_list_date">2022.04.05</span>
      </div>
    </div>

    <div class="evnet_list_text_box">
      <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
      <div class="event_list_text">
        <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
        <span class="event_list_date">2022.04.05</span>
      </div>
    </div>

    <div class="evnet_list_text_box">
      <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
      <div class="event_list_text">
        <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
        <span class="event_list_date">2022.04.05</span>
      </div>
    </div>

    <div class="evnet_list_text_box">
      <a href=""><div class="event_list_img" style="background-image: url(img/ì´ë²¤í¸ì¬ì§/íì¤í¸ì©ì¬ì§\ ê°ë¡ì¬ì§.jpg);"></div></a>
      <div class="event_list_text">
        <a href=""><span class="event_list_title">ì ëª©ì ìë ¥íì¸ì</span></a>
        <span class="event_list_date">2022.04.05</span>
      </div>
    </div>
  </div>
  <!-- ì¢ë£ëì´ë²¤í¸ -->


  <div class="pager ">
    <div class="page_wrap">
      <div class="page_nation">
         <a class="arrow pprev" href="#"></a>
         <a class="arrow prev" href="#"></a>
         <a href="#" class="active">1</a>
         <a href="#">2</a>
         <a href="#">3</a>
         <a href="#">4</a>
         <a href="#">5</a>
         <a href="#">6</a>
         <a href="#">7</a>
         <a href="#">8</a>
         <a href="#">9</a>
         <a href="#">10</a>
         <a class="arrow next" href="#"></a>
         <a class="arrow nnext" href="#"></a>
      </div>
   </div>
  </div>

 </div>







































































































<!-- ì ì¼ ìµíë¨ -->
<div class="bottom">
    <!--ê³ ê°ì¼í°-->
    <hr class="lhr5"/>
    <div class="inner_case_bottom">
        <div class="bottom_text_1">ê³ ê°ì¼í°</div>
        <div class="bottom_text_2">íì¼ 08:00 ~ 19:30, í ìì¼,ê³µí´ì¼
            í´ë¬´&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;02-1234-5678&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;customer@projectCinema.co.kr</div>
        <div class="bottom_text_3">ìí¸ : (ì£¼)íë¡ì í¸ìí &nbsp;&nbsp;&nbsp; ëíì : 2ì¡°<br>
            ì£¼ì : ëì ê´ì­ì ëêµ¬ ì°ìë¡ 352-21 (ì£¼)íë¡ì í¸ìí

            <br><br>ì¬ìì ë±ë¡ë²í¸ : 123-45-6789<br>TEL : 02-1234-5678 Email : customer@projectCinema.co.kr
        </div>
        <div class="bottom_text_4">Â© ProjectCinema Co., Ltd All rights reservedv.</div>
    </div>
    </div>
    <jsp:include page="../include/body.jsp"></jsp:include>
</body>
</html>