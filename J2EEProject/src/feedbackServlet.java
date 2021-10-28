

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.*;  
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/feedbackServlet")
public class feedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public feedbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{


		//getting input values from jsp page
		String fb = request.getParameter("feedback");
		String role = request.getParameter("role");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String date = request.getParameter("date");

		Connection con = null;
 		String url = "jdbc:mysql://localhost:3306/library"; //mysql URL and followed by the database name
 		String username = "librarian"; //mysql username
 		String password = "librarian"; //mysql password
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, username, password); //attempting to connect to mysql database
 		System.out.println("Printing connection object "+con);

		PreparedStatement st = con .prepareStatement("insert into feedback values(?,?,?,?,?)");
 		st.setString(1,fb);
		st.setString(2,role);
		st.setString(3,name);
		st.setString(4,id);
		st.setDate(5, java.sql.Date.valueOf(date));
		int result=st.executeUpdate();	
		
		if(result>0)
		{
			
			RequestDispatcher rd = request.getRequestDispatcher("Added.jsp");
			rd.forward(request, response);
		}


		}
		 catch (Exception e) 
 		{
 			e.printStackTrace();
 		}

	
	}



}
