<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>작은 여행, 다녀오겠습니다.</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script|Nanum+Gothic|Nanum+Pen+Script&amp;subset=korean" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/main.css" />
		
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper" class="fade-in">

				<!-- Intro -->
					<div id="intro">
						<h1>오늘이 행복해질 <br />
							일상 속 작은 여행</h1>
					
					</div>

				<!-- Header -->
					<header id="header">
						<a href="index.jsp" class="logo"><p style="float:right">작은 여행, <br> 다녀오겠습니다.</p></a>
					</header>

				<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							<li><a href="index.jsp">시작하기</a></li>
							<li><a href="leavework.jsp">퇴근 후 여행</a></li>
							<li><a href="nexttown.jsp">옆 동네 여행</a></li>
							<li><a href="education.jsp">사교육 여행</a></li>
							<li><a href="dailylife.jsp">일상에 초대하기</a></li>
							<li ><a href="plan.jsp">내 여행 계획</a></li>
							<li class="active"><a href="travel.jsp">내 여행 일기</a></li>
						</ul>
						
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Featured Post -->
							<article class="post featured">
								<header class="major">
									<h3>여행을 끝마치고</h3>
									<p>작은 여행을 끝마치고, 일상으로 돌아가기 전 되돌아보는 시간.</p>
							</article>
							
						<!-- Posts -->
							<section class="posts">
							
							<article style="width:100%;">
									<center>
									<form method="post" action="diaryProc.jsp">
											
											<div class="field" >
												<label for="title" >지난 여행을 한 문장으로 적어보세요.</label>
												<input type="text" name="title" id="title" width="100%" required/><br><br>
												
											</div>
											<div class="field" >
												<label for="start">여행 시작 날짜</label>
												<input type="date" name="start" id="start" required><br>
												<label for="finish"> 여행 마친 날짜</label>
												<input type="date" name="finish" id="finish" required><br>
											</div>
											<div class="field" >
											<br><br>
												<label for="stay" >어디서 머물렀나요?</label>
												<input type="text" name="stay" id="stay" width="100%" required/><br><br>
												
											</div>
											<div class="field" >
												<label for="stay" >무엇을 하였나요?</label>
												<textarea name="did" id="did" rows="6" required></textarea><br><br>
												
											</div>
											<div class="field" >
												<label for="content" >여행을 하고 나서 남기고 싶은 말을 적어주세요.</label>
												<textarea name="content" id="content" rows="7" required></textarea><br><br>
												
											</div>
											<input type="submit" value="여행 일기 쓰기">
											</form>
									</center>		
							</article>
							
									<%
								int totalRowCount = 0;
									int currentPage = 1;	
								Connection conn =null;
								PreparedStatement pstmt = null;
								PreparedStatement totalstatement = null;
								PreparedStatement listStatement = null;
								ResultSet totalResultSet = null;
								ResultSet listResultSet = null;
								try{
								String url = "jdbc:mysql://localhost:3306/db1?useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
								Class.forName("com.mysql.jdbc.Driver");
								String user = "root";
								String password = "1234";
									
								conn = DriverManager.getConnection(url,user,password);
								//out.println("연결되었습니다.");	
									
					
								}
								catch(SQLException e) {
									e.printStackTrace();
									//out.println("연결되지 않았습니다.");	
								}finally {
								       if (pstmt != null) pstmt.close();
								       if (conn != null) conn.close();
							
								    }
			%>
						
							</section>
						
					</div>

			
				<!-- Footer -->
					<footer id="footer">
						
					</footer>

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