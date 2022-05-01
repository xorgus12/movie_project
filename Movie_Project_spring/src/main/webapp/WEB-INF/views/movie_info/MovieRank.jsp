<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
 <jsp:include page="../include/header.jsp"></jsp:include>
    <link rel="stylesheet" href="../../resources/css/style/style.css">
    <link rel="stylesheet" href="../../resources/css/movie_info/movierank.css">

</head>
<body>
  <div class="box_case">
    <!--좌우크기조절-->
    <div class="title">
      <a href="../../../../" class="main_back">
        <img src="../../resources/img/root/메인아이콘_흰.jpg" alt="메인아이콘" />
        <div class="title_name">Miner Cinema</div>
      </a>
    </div>
<div class="title_right">
	                <a href="such"><img src="../../resources/img/root/돋보기화이트.jpg" alt="돋보기아이콘" style="height: 22px; width: 25px;" /></a>
	                <div class="login_link"><a href="serviceCenter/CenterService" >고객센터</a></div>
	              	<c:if test="${sessionScope.member.grade==0}">	<div class="login_link"><a href="../login">로그인</a></div></c:if>
	              	<c:if test="${sessionScope.member.grade>0}">	<div class="login_link"><a href="../logout">로그아웃</a></div></c:if>
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
     <div class="midbox">
       <div class="moviechartbox">
            <div class="moviechart">예매 순위</div>
          </div>
      <div class="moviebox">
        <!-- <div class="movirank1-4"> -->
          <div class="movierank">
            <div class="movieinfo">
              <p class="movieinfo_public">  <span class="ranting15">15</span>
              뜨거운 피
              </p>
              <p class="movieinfo_public2">
                <span>예매율:26.64%</span>
                <span>평점 : 7</span>
              </p>
            </div>
              <div class="moviephoto">
              <div class="container">
                <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
                <div class="textbox">
                  <button class="text">예매</button>
                  <button class="text1">정보</button>
                </div>
              </div>
              
              </div>
            </div>



            <div class="movierank">
              <div class="movieinfo">
                <p class="movieinfo_public">  <span class="ranting12">12</span>
                이상한 나라의 수학자
                </p>
                <p class="movieinfo_public2">
                  <span>예매율:26.64%</span>
                  <span>평점 : 7</span>
                </p>
              </div>
              <div class="moviephoto">
              <div class="container">
                <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
                <div class="textbox">
                  <button class="text">예매</button>
                  <button class="text1">정보</button>
                </div>
              </div>
          
              </div>
            </div>


            <div class="movierank">
              <div class="movieinfo">
                <p class="movieinfo_public">  <span class="rantingall">전체</span>
                이상한 나라의 수학자
                </p>
                <p class="movieinfo_public2">
                  <span>예매율:26.64%</span>
                  <span>평점 : 7</span>
                </p>
              </div>
              <div class="moviephoto">
              <div class="container">
                <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
                <div class="textbox">
                  <button class="text">예매</button>
                  <button class="text1">정보</button>
                </div>
              </div>
              </div>
            </div>

            <div class="movierank">
              <div class="movieinfo">
                <p class="movieinfo_public">  <span class="rantingall">전체</span>
                이상한 나라의 수학자
                </p>
                <p class="movieinfo_public2">
                  <span>예매율:26.64%</span>
                  <span>평점 : 7</span>
                </p>
              </div>
              <div class="moviephoto">
              <div class="container">
                <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
                <div class="textbox">
                  <button class="text">예매</button>
                  <button class="text1">정보</button>
                </div>
              </div>
              </div>
            </div>
         <!-- </div> -->
         <!-- 무비랭크 1-4 -->
         <div class="movierank">
          <div class="movieinfo">
            <p class="movieinfo_public">  <span class="rantingall">전체</span>
            이상한 나라의 수학자
            </p>
            <p class="movieinfo_public2">
              <span>예매율:26.64%</span>
              <span>평점 : 7</span>
            </p>
          </div>
          <div class="moviephoto">
          <div class="container">
            <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
            <div class="textbox">
              <button class="text">예매</button>
              <button class="text1">정보</button>
            </div>
          </div>
          </div>
        </div>

        <div class="movierank">
          <div class="movieinfo">
            <p class="movieinfo_public">  <span class="rantingall">전체</span>
            이상한 나라의 수학자
            </p>
            <p class="movieinfo_public2">
              <span>예매율:26.64%</span>
              <span>평점 : 7</span>
            </p>
          </div>
          <div class="moviephoto">
          <div class="container">
            <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
            <div class="textbox">
              <button class="text">예매</button>
              <button class="text1">정보</button>
            </div>
          </div>
          </div>
        </div>

        <div class="movierank">
          <div class="movieinfo">
            <p class="movieinfo_public">  <span class="rantingall">전체</span>
            이상한 나라의 수학자
            </p>
            <p class="movieinfo_public2">
              <span>예매율:26.64%</span>
              <span>평점 : 7</span>
            </p>
          </div>
          <div class="moviephoto">
          <div class="container">
            <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
            <div class="textbox">
              <button class="text">예매</button>
              <button class="text1">정보</button>
            </div>
          </div>
          </div>
        </div>

        <div class="movierank">
          <div class="movieinfo">
            <p class="movieinfo_public">  <span class="rantingall">전체</span>
            이상한 나라의 수학자
            </p>
            <p class="movieinfo_public2">
              <span>예매율:26.64%</span>
              <span>평점 : 7</span>
            </p>
          </div>
          <div class="moviephoto">
          <div class="container">
            <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
            <div class="textbox">
              <button class="text">예매</button>
              <button class="text1">정보</button>
            </div>
          </div>
          </div>
        </div>

        <div class="movierank">
          <div class="movieinfo">
            <p class="movieinfo_public">  <span class="rantingall">전체</span>
            이상한 나라의 수학자
            </p>
            <p class="movieinfo_public2">
              <span>예매율:26.64%</span>
              <span>평점 : 7</span>
            </p>
          </div>
          <div class="moviephoto">
          <div class="container">
            <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
            <div class="textbox">
              <button class="text">예매</button>
              <button class="text1">정보</button>
            </div>
          </div>
          </div>
        </div>

        <div class="movierank">
          <div class="movieinfo">
            <p class="movieinfo_public">  <span class="rantingall">전체</span>
            이상한 나라의 수학자
            </p>
            <p class="movieinfo_public2">
              <span>예매율:26.64%</span>
              <span>평점 : 7</span>
            </p>
          </div>
          <div class="moviephoto">
          <div class="container">
            <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
            <div class="textbox">
              <button class="text">예매</button>
              <button class="text1">정보</button>
            </div>
          </div>
          </div>
        </div>
           


            <div class="movierank">
              <div class="movieinfo">
                <p class="movieinfo_public">  <span class="rantingall">전체</span>
                이상한 나라의 수학자
                </p>
                <p class="movieinfo_public2">
                  <span>예매율:26.64%</span>
                  <span>평점 : 7</span>
                </p>
              </div>
              <div class="moviephoto">
              <div class="container">
                <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
                <div class="textbox">
                  <button class="text">예매</button>
                  <button class="text1">정보</button>
                </div>
              </div>
              </div>
            </div>


            <div class="movierank">
              <div class="movieinfo">
                <p class="movieinfo_public">  <span class="rantingall">전체</span>
                이상한 나라의 수학자
                </p>
                <p class="movieinfo_public2">
                  <span>예매율:26.64%</span>
                  <span>평점 : 7</span>
                </p>
              </div>
              <div class="moviephoto">
              <div class="container">
                <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
                <div class="textbox">
                  <button class="text">예매</button>
                  <button class="text1">정보</button>
                </div>
              </div>
              </div>
            </div>



            <div class="movierank">
              <div class="movieinfo">
                <p class="movieinfo_public">  <span class="rantingall">전체</span>
                이상한 나라의 수학자
                </p>
                <p class="movieinfo_public2">
                  <span>예매율:26.64%</span>
                  <span>평점 : 7</span>
                </p>
              </div>
              <div class="moviephoto">
              <div class="container">
                <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
                <div class="textbox">
                  <button class="text">예매</button>
                  <button class="text1">정보</button>
                </div>
              </div>
              </div>
            </div>


            <div class="movierank">
              <div class="movieinfo">
                <p class="movieinfo_public">  <span class="rantingall">전체</span>
                이상한 나라의 수학자
                </p>
                <p class="movieinfo_public2">
                  <span>예매율:26.64%</span>
                  <span>평점 : 7</span>
                </p>
              </div>
              <div class="moviephoto">
              <div class="container">
                <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
                <div class="textbox">
                  <button class="text">예매</button>
                  <button class="text1">정보</button>
                </div>
              </div>
              </div>
            </div>

            
            <div class="movierank">
              <div class="movieinfo">
                <p class="movieinfo_public">  <span class="rantingall">전체</span>
                이상한 나라의 수학자
                </p>
                <p class="movieinfo_public2">
                  <span>예매율:26.64%</span>
                  <span>평점 : 7</span>
                </p>
              </div>
              <div class="moviephoto">
              <div class="container">
                <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
                <div class="textbox">
                  <button class="text">예매</button>
                  <button class="text1">정보</button>
                </div>
              </div>
              </div>
            </div>
            
            <div class="movierank">
              <div class="movieinfo">
                <p class="movieinfo_public">  <span class="rantingall">전체</span>
                이상한 나라의 수학자
                </p>
                <p class="movieinfo_public2">
                  <span>예매율:26.64%</span>
                  <span>평점 : 7</span>
                </p>
              </div>
              <div class="moviephoto">
              <div class="container">
                <img src="../../resources/img/poster/이상한나라의수학자.jfif" alt="Picsum" class="image" style="width:100%">
                <div class="textbox">
                  <button class="text">예매</button>
                  <button class="text1">정보</button>
                </div>
              </div>
              </div>
            </div>


     
       


          </div>
               <!-- 페이징디자인 -->
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



















































     <!-- 제일 최하단 -->
<hr class="lhr5"/>
<div class="bottom">
    <!--고객센터-->

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