package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mrec.dao.DBMan;

@WebServlet(urlPatterns={"/addFinance"})
public class UserFinance extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
              getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String username=request.getParameter("name");
		String email=request.getParameter("email");  
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");  
		String city=request.getParameter("city");
		String pincode=request.getParameter("pincode");  
		String amount=request.getParameter("amount");  
		String page="/Finance.jsp?msg=adfld";
		try
		{
			if(DBMan.addFinReq(username, email, contact, address, city, pincode, amount))
				page="/index.jsp?msg=adscs";
		}
		catch(Exception e){e.printStackTrace();}
		getServletContext().getRequestDispatcher(page).forward(request, response);
	}
}