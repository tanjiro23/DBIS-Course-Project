import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat; 

@WebServlet("/deleteShop")
public class deleteShop extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public deleteShop() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{

		//getting input values from jsp page
		String no = request.getParameter("num");

		
		Connection con = null;
 		String url = "jdbc:mysql://localhost:3306/library"; //mysql URL and followed by the database name
 		String username = "librarian"; //mysql username
 		String password = "librarian"; //mysql password
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, username, password); //attempting to connect to mysql database
 		System.out.println("Printing connection object "+con);
	
		
		PreparedStatement st = con .prepareStatement("delete from users where user_id=?");
 		st.setString(1,no);
		
		int result1=st.executeUpdate();
		
		if(result1>0)
		{
			
			RequestDispatcher rd = request.getRequestDispatcher("Deleted.jsp");
			rd.forward(request, response);
		}
		

		}
		 catch (Exception e) 
 		{
 			e.printStackTrace();
 		}
	
	}

}