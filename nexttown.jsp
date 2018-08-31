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
		<title>옆 동네 여행</title>
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
							<li class="active"><a href="nexttown.jsp">옆 동네 여행</a></li>
							<li><a href="education.jsp">사교육 여행</a></li>
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
									<h3>옆 동네 여행	</h3>
									<p style="font-size:1em;font-family: 'Nanum Myeongjo', serif; line-height:1.2; ">여행에서 중요한 것은 '얼마나 멀리'가 아니다.</p>
								</header>
								<center>
								<div class="image main"><img src="images/2.jpg" alt="" style="width:60%;"/></div>
								</center>
								<p>옆 동네 여행은 퇴근 후 여행보다 적극적으로 일상 속에서 여행을 하는 방법입니다. 조금 더 과감하게 발걸음을 옮겨보세요. 이번 여행 역시 돈이 많이 들지 않고, 긴 시간이 필요하지도 않습니다. 퇴근 후 또는 반차만 내고도 떠날 수 있고, 비행기나 기차가 아니라, 지하철, 버스, 심지어 자전거로도 갈 수 있는 여행입니다.</p>
							<br><br>
								<header class="major">
								<span class="date">옆 동네 여행 계획</span>
								</header>
								<p> 
								<form method="post" action="nexttownProc.jsp">
									<h5>1. 날짜 정하기</h5>
									 평일의 한가로움을 즐길 수 있는 평일 퇴근 후, 멀리 가지 않아도 특별한 1박 2일을 즐길 수 있는 금요일 저녁, 가까운 옆 동네에 짐을 풀고 한적하게 나만의 여행을 즐길 수 있는 주말, 떠나지 못할 이유 없는 지금 당장.<br>
									 옆 동네 여행을 가기 위한 날짜를 정해보세요.<br><br>
									 <h4>언제가 좋으신가요?</h4>
											<input type="date" name="date" required>
											<br><br>
											
									<h4>2. 떠날 장소 정하기</h4>
									평소에 좋아하거나, 걸어서 갈 수 있는 가까운 동네, 누구나 좋아하는 관광지, 도시 외곽은 가치를 느끼지 못했던 곳도 놀라운 것들로 가득찬 여행지일 수 있습니다.
									<br>
											
											<div class="field">
												<label for="money">떠날 장소</label>
												<input type="text" name="place" id="place" required/><br><br>
												
											</div>
											<h4>3. 숙소 정하기</h4>
											다양한 숙소 예약 사이트를 통해 숙소를 예약하세요!<br>
											<a href="https://www.airbnb.co.kr">AIRBNB 에어비앤비</a> &nbsp; 
											<a href="https://www.hotelscombined.co.kr/">호텔스컴바인</a> &nbsp;
											<a href="https://www.yanolja.com/">야놀자</a> &nbsp;  <br><br>
											<div class="field">
												<label for="money">숙소는 어디인가요?</label>
												<input type="text" name="stay" id="stay" required/><br><br>
												
											</div>
											<h4>4. 가볍게 떠나기</h4>
											세면도구와 잠옷, 간단한 화장품만 챙기세요.
											
											<br><br>
											<h4>5. 어떻게 여행할까요?</h4>
											내 마음이 원하는 것을 하기<br>
											예를 들어 예쁜 가게, 관광지 구경하기, 멋진 카페에서 시간 보내기, 사진 , 그림 등 취미여행 하기, 친구와 함께 저녁식사 등 원하는 것을 하세요!
											<div class="col-12">
												<textarea name="todo" id="demo-message" placeholder="구체적으로 할 것이 무엇인가요?" rows="6" required></textarea>
											</div>
									<br><br>
									<h4>6. 늦은 밤, 이른 아침에 동네 산책하기</h4>
									<h4>7. 일상으로 돌아오기</h4>
										<ul class="actions">
											<li><input type="submit" value="여행 계획 저장하기" /></li>
										</ul>
									
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