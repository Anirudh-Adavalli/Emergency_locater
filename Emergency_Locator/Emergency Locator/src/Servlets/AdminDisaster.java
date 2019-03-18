package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mrec.dao.DBMan;

@WebServlet(urlPatterns={"/adisaster"})
public class AdminDisaster extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
              getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String name=request.getParameter("name");
		String area=request.getParameter("area");  
		String city=request.getParameter("city");
		String state=request.getParameter("state");  
		String conper=request.getParameter("conper");
		String connum=request.getParameter("connum");  
		String page="/ADisaster.jsp?msg=adfld";
		try
		{
			if(DBMan.addDisaster(name, area, city, state, conper, connum))
				page="/index.jsp?msg=adscs";
		}
		catch(Exception e){e.printStackTrace();}
		getServletContext().getRequestDispatcher(page).forward(request, response);
	}
}