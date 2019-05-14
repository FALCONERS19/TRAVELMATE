package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.RegDAO;
import Model.RegModel;




/**
 * Servlet implementation class RegServlet
 */
@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegServlet() {
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
		
		
		System.out.println("Success");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String idProof=request.getParameter("id");
		String gender=request.getParameter("gen");
		String date=request.getParameter("dob");
		String add=request.getParameter("add");
		
		String mob=request.getParameter("phone");
		String emphone=request.getParameter("emphone");
		String userid=request.getParameter("userid");
		String password=request.getParameter("pwd");
		
		String rev=date.substring(6,10);
		
		StringBuilder sb=new StringBuilder(rev);
		StringBuilder reve=sb.reverse();
		System.out.println("Success 1");
		int lname1=lname.length();
		int fname1=fname.length();

		   //String password=fname.substring(0,2)+lname.substring(lname1-2,lname1)+id.substring(0,2)+mob.substring(0,1)+mob.substring(2,3)+mob.substring(4,5)+mob.substring(6,7)+mob.substring(8,9);

		userid=fname.substring(0,2)+lname.substring(lname1-2,lname1);
		password=fname.substring(fname1-1,fname1)+lname.substring(0,2)+mob.substring(0,1)+mob.substring(2,3)+mob.substring(4,5)+mob.substring(6,7)+mob.substring(8,9)+idProof.substring(0,2)+reve;
		
		System.out.println("Success 3");
		
		RegDAO obj=new RegDAO();
		RegModel m=new RegModel(fname,lname,email,idProof,gender,date,add,mob,emphone,userid,password);
		int result=obj.insert(m); 
		if(result>0)
		  {
		   out.println("<html><body><center>");
		   out.println("<h5>Welcome "+fname+"You are Registered Successfully!!!<br>");
		   out.println("Kindly ReEnter Ur User ID is: "+userid+"<br>");
		   out.println("Kindly ReEnter Ur Password is: "+password+"<h5><br>");
		   out.println("</center></body></html>");
		 }
		  request.getRequestDispatcher("chngepwd.jsp").include(request, response);
		}
	
	}


