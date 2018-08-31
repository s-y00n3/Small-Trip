<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String title = request.getParameter("title");
	String start = request.getParameter("start");
	String finish = request.getParameter("finish");
	String stay = request.getParameter("stay");
	String did = request.getParameter("did");
	String content =request.getParameter("content");
	
	//DB
	Connection conn =null;
	PreparedStatement pstmt = null;
	try {
		 
		
		String url = "jdbc:mysql://localhost:3306/db1?useUnicode=true&characterEncoding=EUC_KR&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
		Class.forName("com.mysql.jdbc.Driver");
		String user = "root";
		String password = "1234";
		
		conn = DriverManager.getConnection(url,user,password);
		//out.println("연결되었습니다.");	
		
		
	 	pstmt = conn.prepareStatement("insert into review(title,start_date,finish_date,stay,did,content) values ( ?,?,?,?,?,?)");
		pstmt.setString(1, title);
		pstmt.setString(2, start);
		pstmt.setString(3, finish);
		pstmt.setString(4, stay);
		pstmt.setString(5, did);
		pstmt.setString(6, content);
		pstmt.executeUpdate();
		
		
		//out.println("저장되었습니다."); 
		%>
		<script>location.href = "savecomplete2.jsp"; </script>
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
</body>
</html>