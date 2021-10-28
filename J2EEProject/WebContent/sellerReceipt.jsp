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
	String date = request.getParameter("date");

	PreparedStatement st = con .prepareStatement("select * from dairy_milk_sell_table where s_code = ? and submit_date=?");
		st.setString(1,code);
		st.setDate(2, java.sql.Date.valueOf(date));
	ResultSet resultSet=st.executeQuery();
	
%>
<!DOCTYPE html>
<html>
<body>
<table border="1">
<tr>
<td>fat</td>
<td>qty</td>
<td>date</td>
<td>price</td>
</tr>
<%
try{
while(resultSet.next()){
	 float f = resultSet.getFloat("fat");
	 int q = resultSet.getInt("quantity");
	 float p = f*q*10;
%>
<tr>
<td><%=resultSet.getFloat("fat") %></td>
<td><%=resultSet.getInt("quantity") %></td>
<td><%=resultSet.getString("submit_date") %></td>
<td><%=p %></td>
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