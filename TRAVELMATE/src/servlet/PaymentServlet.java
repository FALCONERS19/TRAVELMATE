package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		PrintWriter out=response.getWriter();
		String card_holder=request.getParameter("card_holder");
		String card_type=request.getParameter("card_type");
		String card_number=request.getParameter("card_number");
		String expiry_date=request.getParameter("expiry_date");
		String cvv=request.getParameter("cvv");
		int result=0;
		try {
		 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		 
		String sql="insert into Project.paymentdetail values(?,?,?,?,?)";
		PreparedStatement pr=con.prepareStatement(sql);

		pr.setString(1,card_holder);
		pr.setString(2,card_type);
		pr.setString(3,card_number);
		pr.setString(4,expiry_date);
		pr.setString(5,cvv);
		result=pr.executeUpdate();
		if(result>0)
		{
		 out.println("<html><body>DataInserted Successfully</body></html>");
		}
		} catch (Exception e) {
		// TODO: handle exception
		 e.printStackTrace();
		}
		}
		

	}


	
	
	
	 
	
	 
	 // to generate ticket id to get passenger details from database

	
	
				 
	
	   
	  	
	  