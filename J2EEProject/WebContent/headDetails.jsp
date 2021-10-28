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

	PreparedStatement st = con .prepareStatement("select * from headtable where id = ?");
		st.setString(1,id);
	ResultSet resultSet=st.executeQuery();
	
%>
<!DOCTYPE html>
<html>
<body>
<h1>head details</h1>
<form action="updatepassword.jsp">
    <input type="submit" value="update Password" />
</form>
<table border="1">
<tr>
<td>id</td>
<td>name</td>
<td>salary</td>
<td>ph no</td>
<td>center no</td>
</tr>
<%
try{
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("salary") %></td>
<td><%=resultSet.getString("phone_no") %></td>
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
		