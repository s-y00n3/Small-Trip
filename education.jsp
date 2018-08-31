<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Massively by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>사교육 여행</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

			<!-- Header -->
			<header id="header">
				<a href="index.jsp" class="logo"><p style="float:right">작은 여행, <br> 다녀오겠습니다.</p></a>
			</header>

		<!-- Nav -->
			<nav id="nav">
				<ul class="links">
							<li><a href="index.jsp">시작하기</a></li>
							<li ><a href="leavework.jsp">퇴근 후 여행</a></li>
							<li><a href="nexttown.jsp">옆 동네 여행</a></li>
							<li  class="active"><a href="education.jsp">사교육 여행</a></li>
							<li><a href="dailylife.jsp">일상에 초대하기</a></li>
							<li><a href="plan.jsp">내 여행 계획</a></li>
							<li><a href="travel.jsp">내 여행 일기</a></li>
						</ul>
			</nav>

				<!-- Main -->
					<div id="main">

						<!-- Post -->
							<section class="post">
								<header class="major">
									<h3>사교육 여행	</h3>
									<p style="font-size:1em;font-family: 'Nanum Myeongjo', serif; line-height:1.2; ">여행자의 마음으로 떠나는 배움 여행</p>
								</header>
								<center>
								<div class="image main"><img src="images/3.jpg" alt="" style="width:60%;"/></div>
								</center>
								<p>사교육 여행은 다양한 세계를 여행할 수 있습니다. 마음만 먹으면 무엇이든 대중교통을 타고 가서 배울 수 있습니다. 살사를 추며 스페인을, 뮤지컬을 배우며 뉴욕을, 요가와 함께 인도 여행을 떠날 수도 있지요. 이러한 문화콘텐츠들은 그 문화권의 역사와 색채를 그대로 담고 있습니다. 한달에 단 몇만 원을 지불하기만 하면 그 환상적인 세계를 만날 수 있죠.</p>
							<br><br>
								<header class="major">
								<span class="date">사교육 여행 계획</span>
								</header>
								<p> 
								<form method="post" action="educationProc.jsp">>
									<h5>1. 버킷 리스트 작성하기</h5>
									마음 속에 품은 작은 욕망이 있는지, 오래전부터 가지고 있던 로망은 없는지 떠올려보세요. 그리고 그것과 관련된 배움 과목이 무엇일지 생각해보는 겁니다. 단, 이 여행을 즐기려면 자신에게 솔직해져야 합니다.<br><br>
									<textarea name="message" id="message" rows="5" placeholder="나는 조용한 시간을 좋아하는구나.명상이나 요가는 어떨까?&#13;&#10; 좋은 향을 맡으면 행복해지던데. 조향을 한번 배워볼까?&#13;&#10;강물 위에 있으면 기분이 어떨까? 그렇다면 카약을?"></textarea>
									
																				
									<h4>2. 배우고 싶은 프로그램 찾기</h4>
									평소에 좋아하거나, 걸어서 갈 수 있는 가까운 동네, 누구나 좋아하는 관광지, 도시 외곽은 가치를 느끼지 못했던 곳도 놀라운 것들로 가득찬 여행지일 수 있습니다.
									<br>
											
											<div class="field">
												<label for="money">떠날 장소</label>
												<input type="text" name="place" id="place" /><br><br>
												
											</div>
											<h4>3. 숙소 정하기</h4>
											다양한 숙소 예약 사이트를 통해 숙소를 예약하세요!<br>
											<a href="https://www.airbnb.co.kr">AIRBNB 에어비앤비</a> &nbsp; 
											<a href="https://www.hotelscombined.co.kr/">호텔스컴바인</a> &nbsp;
											<a href="https://www.yanolja.com/">야놀자</a> &nbsp;  <br><br>
											<div class="field">
												<label for="money">숙소는 어디인가요?</label>
												<input type="text" name="staty" id="stay" /><br><br>
												
											</div>
											<h4>4. 가볍게 떠나기</h4>
											세면도구와 잠옷, 간단한 화장품만 챙기세요.
											
											<br><br>
											<h4>5. 어떻게 여행할까요?</h4>
											내 마음이 원하는 것을 하기<br>
											예를 들어 예쁜 가게, 관광지 구경하기, 멋진 카페에서 시간 보내기, 사진 , 그림 등 취미여행 하기, 친구와 함께 저녁식사 등 원하는 것을 하세요!
											<div class="col-12">
												<textarea name="howtotown" id="demo-message" placeholder="구체적으로 할 것이 무엇인가요?" rows="6"></textarea>
											</div>
									<br><br>
									<h4>6. 늦은 밤, 이른 아침에 동네 산책하기</h4>
									<h4>7. 일상으로 돌아오기</h4>
										
									
									</form>
									 
								</p>
							</section>

					</div>

				<!-- Footer -->
				

				<!-- Copyright -->
					<div id="copyright">
						<ul><li>&copy; KSY</ul>
					</div>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>