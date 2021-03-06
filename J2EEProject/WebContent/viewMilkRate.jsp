<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%
Connection con = null;
	String url = "jdbc:mysql://localhost:3306/library"; //mysql URL and followed by the database name
	String username = "librarian"; //mysql username
	String password = "librarian"; //mysql password

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url, username, password); //attempting to connect to mysql database
	System.out.println("Printing connection object "+con);
	
	ServletContext context=getServletContext();  
	String id=(String)context.getAttribute("headID");
	PreparedStatement st = con .prepareStatement("select center_no from centertable where head_id = ?");
	st.setString(1,id);
	ResultSet resultSet=st.executeQuery();
	String cno = "";
	while(resultSet.next()){
		cno=resultSet.getString("center_no");
		}
	st = con .prepareStatement("select * from milk_rate_table where center_no = ?");
		st.setString(1,cno);
	resultSet=st.executeQuery();
%>
<!DOCTYPE html>
<html>
<body>
<h1>Milk Rate</h1>
<table border="1">
<tr>
<td>fat buffalo milk</td>
<td>fat cow milk</td>
<td>qty cow milk</td>
<td>qty buffalo milk</td>
<td>date</td>
<td>center_no</td>
</tr>
<%
try{
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getFloat("fat_cow_milk") %></td>
<td><%=resultSet.getFloat("fat_buffalo_milk") %></td>

<td><%=resultSet.getFloat("quantity_cow_milk") %></td>
<td><%=resultSet.getFloat("quantity_buffalo_milk") %></td>

<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("center_no") %></td>
</tr>
<%
}
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>