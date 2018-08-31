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
		<title>퇴근 후 여행</title>
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
							<li class="active"><a href="leavework.jsp">퇴근 후 여행</a></li>
							<li><a href="nexttown.jsp">옆 동네 여행</a></li>
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
									<h3>퇴근 후 여행	</h3>
									<p style="font-size:1em;font-family: 'Nanum Myeongjo', serif; line-height:1.2; ">퇴근 후 1시간, 혼자 여행을 시작합니다.</p>
								</header>
								<center>
								<div class="image main"><img src="images/1.jpg" alt="" style="width:60%;"/></div>
								</center>
								<p>퇴근 후 여행은 먼 곳으로 여행을 떠나왔다고 '관점을 바꾸어' 생각하며, 익숙한 우리 동네를 혼자서 거닐고 탐험하는 것입니다.
										복잡한 일이나, 마음을 어지럽히던 관계의 문제는 두꺼운 외투와 함께 잠시 벗어놓고, 종일 손에서 떼지 못하던 핸드폰도 내려놓고, 
										오직 한 사람 나 자신만을 데리고 가는 여행이지요. 언뜻 듣기에는 너무나 간단해서 시시해 보일지도 모르겠습니다. 하지만 다른 어떤 해외 여행 못지않게 효과가 크답니다.</p>
							<br><br>
								<header class="major">
								<span class="date">퇴근 후 여행 계획</span>
								</header>
								<p> 
									<h5>1. GAP 타임</h5>
									 내가 가장 편안함을 느끼는 곳에서 하루 동안 쌓은 수많은 생각들, 스트레스들을 잠시 내려놓는 시간.<br>
									 <h4>어떤 갭 (Gap) 타임을 가지실 건가요?</h4>
												<div class="col-12">
												<select name="gaptime" id="demo-category">
													<option value="">- 선택하세요 -</option>
													<option value="shower">따뜻한 물로 샤워하기</option>
													<option value="meditation">명상하기</option>
													<option value="teatime">차 마시기</option>
												</select>
											</div>
											<br><br>
											
									<h4>2. 준비물 챙기기</h4>
									<form method="post" action="#">
											<label for="money">1. 편안한 옷과 신발 </label>	
											<div class="field">
												<label for="money">2. 비상금</label>
												<input type="number" name="money" id="money" /><br><br>
												
											</div>
											<h4>3. 목적지 정하기</h4>
											<div class="field">
												<label for="money">어디로 가실 건가요?</label>
												<input type="text" name="destination" id="destination" /><br><br>
												
											</div>
											<h4>4. 색다르게 여행하는 방법 고르기</h4>
											우리 동네를 색다르게 여행할 수 있는 방법
											<div class="col-12">
												<select name="howtotravel" id="demo-category">
													<option value="">- 선택하세요 -</option>
													<option value="bicycle">자전거를 타고 동네 돌아보기</option>
													<option value="bus">마을 버스 타기</option>
													<option value="school">가까운 학교 가기</option>
													<option value="school">시선고 몸의 높낮이 바꿔보기</option>
												</select>
											</div>
											<br>
											<h4>5. 익숙한 집으로 돌아오기</h4>
											좋은 여행을 했다고 생각하며 마음 속으로 싱긋 웃어보기. 오늘 여행에서 좋았던 점을 떠올리기. 좋았던 일을 더 자주 해야겠다고 생각하며 잠을 청하기.
									<br><br><br>
									
									
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