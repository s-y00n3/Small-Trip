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

	String date = request.getParameter("date");
	//out.println("date"+date);
	String place = request.getParameter("place");
	//out.println("place"+place);
	String stay = request.getParameter("stay");
	//out.println("Stay"+stay);
	String todo = request.getParameter("todo");
	
	//todo.replace("\r\n","<br>");
	//out.println("todo"+todo);
	
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
		
		
	 	pstmt = conn.prepareStatement("insert into nexttown(date,place,stay,todo) values ( ?,?,?,?)");
		pstmt.setString(1, date);
		pstmt.setString(2, place);
		pstmt.setString(3, stay);
		pstmt.setString(4, todo);
		pstmt.executeUpdate();
		//out.println("저장되었습니다."); 
		%>
		<script>location.href = "savecomplete.jsp"; </script>
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