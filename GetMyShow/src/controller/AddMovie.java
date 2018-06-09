package controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.TheBean;
import Daou.TheDaou;

/**
 * Servlet implementation class AddMovie
 */
@WebServlet("/AddMovie")
public class AddMovie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMovie() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		String mname = request.getParameter("mname");
		String hname = request.getParameter("hname");
		int seats = Integer.parseInt(request.getParameter("seats"));
		double price = Double.parseDouble(request.getParameter("price"));
		String time = request.getParameter("time");
		
		TheBean bobj = new TheBean();
		bobj.setMname(mname);
		bobj.setHname(hname);
		bobj.setSeats(seats);
		bobj.setTime(time);
		bobj.setPrice(price);
		
		TheDaou dobj = new TheDaou();
		int result = dobj.addMovie(bobj);
		if(result != 0){
			out.println("Added Succesfully..");
			RequestDispatcher rd = request.getRequestDispatcher("adminmain.jsp");
			rd.include(request, response);
		}
		else{
			out.println("Unsuccesful..try again");
			RequestDispatcher rd = request.getRequestDispatcher("addmovie.jsp");
			rd.include(request, response);
		}
	}

}
