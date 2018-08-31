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
							<li class="active"><a href="plan.jsp">내 여행 계획</a></li>
							<li><a href="travel.jsp">내 여행 일기</a></li>
						</ul>
						
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Featured Post -->
							<article class="post featured">
								<header class="major">
									<h3>작은 여행을 시작할, 내 여행 계획 목록</h3>
									
							
								
							</article>

						<!-- Posts -->
							<section class="posts">
							<article style="width:100%;">
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
									
							 String totalSql = "select count(*) from nexttown"; 
							 totalstatement = conn.prepareStatement(totalSql);
							 totalResultSet = totalstatement.executeQuery();
							if(totalResultSet.next()) {
									  totalRowCount = totalResultSet.getInt(1);
							 }//if
								
					 int pagePerRow = 10;
				    String listSql = "SELECT * FROM nexttown ORDER BY id DESC LIMIT ?, ?";
				    listStatement = conn.prepareStatement(listSql);
				    listStatement.setInt(1, (currentPage-1)*pagePerRow); 
				    listStatement.setInt(2, pagePerRow); 
				    listResultSet = listStatement.executeQuery();
				    
%>
					 <table border="1">
        <thead>
            <tr>
                <th>계획 날짜</th>
                <th>여행 장소</th>
            </tr>
        </thead>
        <tbody>

<%
			if(totalRowCount==0){
				%>
				<tr>
					<td colspan="2">여행 계획이 존재하지 않습니다.</td>
					
				</tr>
				<%
			}
			else{
            while(listResultSet.next()) {
%>
                  <tr>
                   <td> <a href="planView.jsp?id=<%=listResultSet.getInt("id")%>"><%=listResultSet.getString("date")%></a></td>
                    <td><a href="planView.jsp?id=<%=listResultSet.getInt("id")%>"><%=listResultSet.getString("place")%></a></td>
                </tr>
<%        
            }//while
			}//else
%>
 </tbody>
    </table>
    <div>
       <button onclick="location.href='nexttown.jsp'">여행 계획 작성하기</button>
    </div>

<%
								}
								catch(SQLException e) {
									e.printStackTrace();
									//out.println("연결되지 않았습니다.");	
								}finally {
								       if (pstmt != null) pstmt.close();
								       if (conn != null) conn.close();
							
								    }
			%>
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