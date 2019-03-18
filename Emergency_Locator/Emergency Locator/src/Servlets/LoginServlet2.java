


package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet2
 */

@WebServlet(urlPatterns={"/AdminLoginServlet"})
public class LoginServlet2 extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
     

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	 
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
			
              getServletContext().getRequestDispatcher("/Admin_Index.jsp").forward(request, response);
		}	 
		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
			//1st Approach
			String email=request.getParameter("mail");
			 String password=request.getParameter("pass");  
			 //2nd Approach
			 
			 //3rd Approach
			 
			 //Difference between null and ""
			 if(email .equals("")||email==null||password.equals("")||password==null)
			 {
				 response.getWriter().write("Fill all the details");
				 
			 }
			 else if(email.equals("admin")&&password.equals("admin"))
				 
			 {
				 HttpSession ses=request.getSession();
				 ses.setAttribute("user", "admin");
				 response.sendRedirect("index.jsp");
			 }
			 else
			 {
				 response.getWriter().write("Incorrect Login id or password");
			 }
		}

		 
		 

	}

