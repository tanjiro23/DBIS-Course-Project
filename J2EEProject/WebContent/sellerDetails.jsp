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
	String code=(String)context.getAttribute("seller_code");
	
	PreparedStatement st = con .prepareStatement("select * from sellertable where s_code = ?");
		st.setString(1,code);
	ResultSet resultSet=st.executeQuery();
	
%>
<!DOCTYPE html>
<html>
<body>
<h1>Seller Details</h1>
<table border="1">
<tr>
<td>code</td>
<td>id</td>
<td>name</td>
<td>cattle type</td>
<td>reg date</td>
</tr>
<%
try{
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("s_code") %></td>
<td><%=resultSet.getString("user_id") %></td>
<td><%=resultSet.getString("s_name") %></td>
<td><%=resultSet.getString("cattle_type") %></td>
<td><%=resultSet.getString("r_date") %></td>
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
