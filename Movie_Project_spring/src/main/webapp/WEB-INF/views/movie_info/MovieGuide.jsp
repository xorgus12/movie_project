<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <jsp:include page="../include/header.jsp"></jsp:include>
<link href="../css/movie_guide.css" rel="stylesheet" type="text/css">
<title>Project movie studio</title>
</head>
  <script>
       $(function(){
      const con = ".movie_box";
      const con2 =".movie_box2";
      const con3 =".movie_box3";
      const con4 =".movie_box4"; 
      const con5 =".movie_box5";
      const con6 =".movie_box6";
      const con7 =".movie_box7";  
      

      $(".area").click(function() { 
      $(con7).css('display', 'none');
      $(con6).css('display', 'none');
      $(con5).css('display', 'none');   
      $(con4).css('display', 'none');
      $(con2).css('display', 'none');
      $(con3).css('display', 'none');
      $(con).css('display', 'flex');
      });    
  

      $(".area2").click(function() { 
      $(con7).css('display', 'none');
      $(con6).css('display', 'none');
      $(con5).css('display', 'none');  
      $(con).css('display', 'none');
      $(con3).css('display', 'none');
      $(con4).css('display', 'none');      
      $(con2).css('display', 'flex');
      });

      $(".area3").click(function() { 
      $(con7).css('display', 'none');
      $(con6).css('display', 'none');
      $(con5).css('display', 'none');     
      $(con).css('display', 'none');
      $(con2).css('display', 'none');
      $(con4).css('display', 'none');   
      $(con3).css('display', 'flex');
      });
      
      $(".area4").click(function() { 
      $(con).css('display', 'none');
      $(con2).css('display', 'none');
      $(con3).css('display', 'none');      
      $(con4).css('display', 'flex');
      $(con7).css('display', 'none');
      $(con6).css('display', 'none');
      $(con5).css('display', 'none');  
      });
     
      $(".area5").click(function() {     
      $(con4).css('display', 'none');
      $(con2).css('display', 'none');
      $(con3).css('display', 'none');
      $(con).css('display', 'none');
      $(con7).css('display', 'none');
      $(con6).css('display', 'none');
      $(con5).css('display', 'flex');  
      });   
      
      $(".area6").click(function() {     
      $(con4).css('display', 'none');
      $(con2).css('display', 'none');
      $(con3).css('display', 'none');
      $(con).css('display', 'none');
      $(con7).css('display', 'none');
      $(con6).css('display', 'flex');
      $(con5).css('display', 'none');  
      }); 
      
      $(".area7").click(function() {     
      $(con4).css('display', 'none');
      $(con2).css('display', 'none');
      $(con3).css('display', 'none');
      $(con).css('display', 'none');
      $(con7).css('display', 'flex');
      $(con6).css('display', 'none');
      $(con5).css('display', 'none');  
      }); 
    });
    
</script>


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
   
     <!--area-->
<div class="movies_box">
  <div class="guide">극장 안내 </div>
   <div class="movie_map">
    <!-- * 카카오맵 - 지도퍼가기 -->
<!-- 1. 지도 노드 -->
<div id="daumRoughmapContainer1649567405666" class="root_daum_roughmap root_daum_roughmap_landing"></div>

<!--
2. 설치 스크립트
* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
new daum.roughmap.Lander({
"timestamp" : "1649567405666",
"key" : "29s94",
"mapWidth" : "750",
"mapHeight" : "390"
}).render();
</script>
  </div>     
    <div class="movie_box">       
    <div class="area red">      
      <div class="area_index" style="background-color: #ec6159;;">전체</div>
     
    </div>

    <div class="area2">
      <div class="area_index">서울/경기/인천</div>
      
      
    </div>

    <div class="area3">
      <div class="area_index">부산</div>
    </div>

     <div class="area4">
      <div class="area_index">충남/대전</div>
    </div>
     <div class="area5">
      <div class="area_index">경북/대구/경남/울산</div>
    </div>   
     <div class="area6">
      <div class="area_index">전라/광주</div>
    </div>   
     <div class="area7">
      <div class="area_index">강원/제주</div>
    </div> 

    <div class="movie_area">
          
      <table class="movie_table">                     
        <thead>  
          <tr>           
              <td>12</td>   
              <td>34</td>   
              <td>56</td>   
          </tr>              
          <tr>           
            <td>34</td>
            <td>456</td>   
            <td>324</td>   
        </tr>              
        <tr>           
          <td>123132</td>
          <td>64564</td>   
          <td>456456</td>   
      </tr>  
      <tr>           
        <td>123132</td>
        <td>64564</td>   
        <td>456456</td>   
    </tr>            
    <tr>           
      <td>123132</td>
      <td>64564</td>   
      <td>456456</td>   
  </tr>                        
        </thead>
                            
    </table>
  </div>
  

</div> 

<!--area2-->
<div class="movie_box2">        
  <div class="area">
    <div class="area_index">전체</div>   
  </div>

  <div class="area2 red">
    <div class="area_index" style="background-color: #ec6159;;">서울/경기/인천</div>
  
 
  </div>

  <div class="area3">
    <div class="area_index">부산</div>
  </div>

   <div class="area4">
    <div class="area_index">충남/대전</div>
  </div>
   <div class="area5">
    <div class="area_index">경북/대구/경남/울산</div>
  </div>   
   <div class="area6">
    <div class="area_index">전라/광주</div>
  </div>   
   <div class="area7">
    <div class="area_index">강원/제주</div>
  </div> 

  <div class="movie_area">
    
          
    <table class="movie_table">                     
      <thead>  
        <tr>           
            <td>12</td>   
            <td>34</td>   
            <td>56</td>   
        </tr>              
        <tr>           
          <td>34</td>
          <td>456</td>   
          <td>324</td>   
      </tr>              
      <tr>           
        <td>123132</td>
        <td>64564</td>   
        <td>456456</td>   
    </tr>  
    <tr>           
      <td>123132</td>
      <td>64564</td>   
      <td>456456</td>   
  </tr>            
  <tr>           
    <td>123132</td>
    <td>64564</td>   
    <td>456456</td>   
</tr>                        
      </thead>
                          
  </table>
</div>
</div> 

<!--area3-->
<div class="movie_box3">        
  <div class="area">
    <div class="area_index">전체</div>
    
  </div>

  <div class="area2">
    <div class="area_index">서울/경기/인천</div>
  </div>

  <div class="area3 red">
    <div class="area_index" style="background-color: #ec6159;;">부산</div>
   
   
  </div>

   <div class="area4">
    <div class="area_index">충남/대전</div>
  </div>
   <div class="area5">
    <div class="area_index">경북/대구/경남/울산</div>
  </div>   
   <div class="area6">
    <div class="area_index">전라/광주</div>
  </div>   
   <div class="area7">
    <div class="area_index">강원/제주</div>
  </div> 
  <div class="movie_area">
          
    <table class="movie_table">                     
      <thead>  
        <tr>           
            <td>12</td>   
            <td>34</td>   
            <td>56</td>   
        </tr>              
        <tr>           
          <td>34</td>
          <td>456</td>   
          <td>324</td>   
      </tr>              
      <tr>           
        <td>123132</td>
        <td>64564</td>   
        <td>456456</td>   
    </tr>  
    <tr>           
      <td>123132</td>
      <td>64564</td>   
      <td>456456</td>   
  </tr>            
  <tr>           
    <td>123132</td>
    <td>64564</td>   
    <td>456456</td>   
</tr>                        
      </thead>
                          
  </table>
</div>

</div> 
<!--area4-->
<div class="movie_box4">        
  <div class="area">
    <div class="area_index">전체</div>
    
  </div>

  <div class="area2">
    <div class="area_index">서울/경기/인천</div>
  </div>

  <div class="area3">
    <div class="area_index">부산</div>
  </div>

   <div class="area4 red">
    <div class="area_index" style="background-color: #ec6159;;">충남/대전</div>
   
  </div>
   <div class="area5">
    <div class="area_index">경북/대구/경남/울산</div>
  </div>   
   <div class="area6">
    <div class="area_index">전라/광주</div>
  </div>   
   <div class="area7">
    <div class="area_index">강원/제주</div>
  </div> 
  <div class="movie_area">
          
    <table class="movie_table">                     
      <thead>  
        <tr>           
            <td>12</td>   
            <td>34</td>   
            <td>56</td>   
        </tr>              
        <tr>           
          <td>34</td>
          <td>456</td>   
          <td>324</td>   
      </tr>              
      <tr>           
        <td>123132</td>
        <td>64564</td>   
        <td>456456</td>   
    </tr>  
    <tr>           
      <td>123132</td>
      <td>64564</td>   
      <td>456456</td>   
  </tr>            
  <tr>           
    <td>123132</td>
    <td>64564</td>   
    <td>456456</td>   
</tr>                        
      </thead>
                          
  </table>
</div>

</div> 
<!--area5-->
<div class="movie_box5">        
  <div class="area">
    <div class="area_index">전체</div>
    
  </div>

  <div class="area2">
    <div class="area_index">서울/경기/인천</div>
  </div>

  <div class="area3">
    <div class="area_index">부산</div>
  </div>

   <div class="area4">
    <div class="area_index">충남/대전</div>
  </div>
   <div class="area5 red">
    <div class="area_index" style="background-color: #ec6159;;">경북/대구/경남/울산</div>
   
  </div>   
   <div class="area6">
    <div class="area_index">전라/광주</div>
  </div>   
   <div class="area7">
    <div class="area_index">강원/제주</div>
  </div> 
  <div class="movie_area">
          
    <table class="movie_table">                     
      <thead>  
        <tr>           
            <td>12</td>   
            <td>34</td>   
            <td>56</td>   
        </tr>              
        <tr>           
          <td>34</td>
          <td>456</td>   
          <td>324</td>   
      </tr>              
      <tr>           
        <td>123132</td>
        <td>64564</td>   
        <td>456456</td>   
    </tr>  
    <tr>           
      <td>123132</td>
      <td>64564</td>   
      <td>456456</td>   
  </tr>            
  <tr>           
    <td>123132</td>
    <td>64564</td>   
    <td>456456</td>   
</tr>                        
      </thead>
                          
  </table>
</div>

</div> 
<!--area6-->
<div class="movie_box6">        
  <div class="area">
    <div class="area_index">전체</div>
    
  </div>

  <div class="area2">
    <div class="area_index">서울/경기/인천</div>
  </div>

  <div class="area3">
    <div class="area_index">부산</div>
  </div>

   <div class="area4">
    <div class="area_index">충남/대전</div>
  </div>
   <div class="area5">
    <div class="area_index">경북/대구/경남/울산</div>
  </div>   
   <div class="area6 red">
    <div class="area_index" style="background-color: #ec6159;;">전라/광주</div>
   
  </div>   
   <div class="area7">
    <div class="area_index">강원/제주</div>
  </div> 
  <div class="movie_area">
          
    <table class="movie_table">                     
      <thead>  
        <tr>           
            <td>12</td>   
            <td>34</td>   
            <td>56</td>   
        </tr>              
        <tr>           
          <td>34</td>
          <td>456</td>   
          <td>324</td>   
      </tr>              
      <tr>           
        <td>123132</td>
        <td>64564</td>   
        <td>456456</td>   
    </tr>  
    <tr>           
      <td>123132</td>
      <td>64564</td>   
      <td>456456</td>   
  </tr>            
  <tr>           
    <td>123132</td>
    <td>64564</td>   
    <td>456456</td>   
</tr>                        
      </thead>
                          
  </table>
</div>

</div> 
<!--area7-->
<div class="movie_box7">        
  <div class="area">
    <div class="area_index">전체</div>
    
  </div>

  <div class="area2">
    <div class="area_index">서울/경기/인천</div>
  </div>

  <div class="area3">
    <div class="area_index">부산</div>
  </div>

   <div class="area4">
    <div class="area_index">충남/대전</div>
  </div>
   <div class="area5">
    <div class="area_index">경북/대구/경남/울산</div>
  </div>   
   <div class="area6">
    <div class="area_index">전라/광주</div>
  </div>   
   <div class="area7 red">
    <div class="area_index" style="background-color: #ec6159;;">강원/제주</div>

  </div> 
  <div class="movie_area">
          
    <table class="movie_table">                     
      <thead>  
        <tr>           
            <td>12</td>   
            <td>34</td>   
            <td>56</td>   
        </tr>              
        <tr>           
          <td>35454</td>
          <td>456</td>   
          <td>324</td>   
      </tr>              
      <tr>           
        <td>123132</td>
        <td>64564</td>   
        <td>456456</td>   
    </tr>  
    <tr>           
      <td>123132</td>
      <td>64564</td>   
      <td>456456</td>   
  </tr>            
  <tr>           
    <td>123132</td>
    <td>64564</td>   
    <td>456456</td>   
</tr>                        
      </thead>
                          
  </table>
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