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
	String code=(String)context.getAttribute("buyer_id");
	
	PreparedStatement st = con .prepareStatement("select * from shoptable where buyer_id = ?");
		st.setString(1,code);
	ResultSet resultSet=st.executeQuery();
	
%>
<!DOCTYPE html>
<html>
<body>
<h1>buyer Bill</h1>
<table border="1">
<tr>
<td>shopNo</td>
<td>city</td>
<td>incharge</td>
<td>shop name</td>
<td>address</td>
</tr>
<%
try{
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("shopNo") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("incharge") %></td>
<td><%=resultSet.getString("shop_name") %></td>
<td><%=resultSet.getString("address") %></td>
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
