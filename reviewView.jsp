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
							<li class="active"><a href="travel.jsp">내 여행 후기</a></li>
						</ul>
						
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Featured Post -->
							<article class="post featured">
								<header class="major">
									<h3>여행을 끝마치고</h3>
									
							
								
							</article>

						<!-- Posts -->
							<section class="posts">
							<article style="width:100%;">
									<%	
								Connection conn = null;
								PreparedStatement stmt = null;
								ResultSet rs = null;
								if(request.getParameter("id") == null) {
								    response.sendRedirect(request.getContextPath()+"travel.jsp");
								} else {

									 int id = Integer.parseInt(request.getParameter("id"));
								try{
								String url = "jdbc:mysql://localhost:3306/db1?useUnicode=true&characterEncoding=UTF-8&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
								Class.forName("com.mysql.jdbc.Driver");
								String user = "root";
								String password = "1234";
									
								conn = DriverManager.getConnection(url,user,password);
								//out.println("연결되었습니다.");	
									
							 String sql = "select * from review where id=?"; 
							 stmt = conn.prepareStatement(sql);
							 
							 stmt.setInt(1, id);
						     rs = stmt.executeQuery();
						
						     if(rs.next()) {
						    	 String did = rs.getString("did");
								did = did.replace("\r\n","<br>");

							   String content = rs.getString("content");
								did = did.replace("\r\n","<br>");
										
					
%>
					<div><h4>여행 일기 제목</h4>
            <%=rs.getString("title")%><br><br></div>
            <div style="margin-top:3%"><h4>여행 시작 날짜</h4>
            <%=rs.getString("start_date")%><br><br></div>
            <div style="margin-top:3%"><h4>여행 마친 날짜</h4>
            <%=rs.getString("finish_date")%><br><br></div>
			 <div style="margin-top:3%"><h4>숙소</h4>
            <%=rs.getString("stay")%><br><br></div>
			<div style="margin-top:3%"><h4>여행하면서 한 일</h4>
            <%=did%><br><br></div>
            <div style="margin-top:3%"><h4>여행 한 후 남기고 싶은 말</h4>
            <%=content%><br><br></div>
           
            <div style="margin-top:4%">
            <a href="remove2.jsp?id=<%=id%>">여행 일기 삭제</a>
            </div>
					 <%
						     }
						     }
								catch(SQLException e) {
									e.printStackTrace();
									//out.println("연결되지 않았습니다.");	
								}finally {
								      
								       if (conn != null) conn.close();
							
								    }
		
								}%>
						</article>
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