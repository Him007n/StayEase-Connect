<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String Name = request.getParameter("name");
    String Cont = request.getParameter("contact");
    String EmailId = request.getParameter("email");
    
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
PreparedStatement st = con.prepareStatement("insert into calltable values(?, ?, ?)");
st.setString(1, Name);
st.setString(2, Cont);
st.setString(3, EmailId);
st.executeUpdate();
response.sendRedirect("Call.jsp");
con.close();
    %>