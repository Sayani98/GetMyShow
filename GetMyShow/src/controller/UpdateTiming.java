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
 * Servlet implementation class UpdateTiming
 */
@WebServlet("/UpdateTiming")
public class UpdateTiming extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateTiming() {
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
		String time = request.getParameter("time");
		
		TheBean bobj = new TheBean();
		bobj.setMname(mname);
		bobj.setTime(time);
		
		TheDaou dobj = new TheDaou();
		int result = dobj.updateTimings(bobj);
		if(result != 0){
			out.println("Updated..");
			RequestDispatcher rd = request.getRequestDispatcher("adminmain.jsp");
			rd.include(request, response);
		}
		else{
			out.println("Unsuccesful...try again");
			RequestDispatcher rd = request.getRequestDispatcher("deletemovie.jsp");
			rd.include(request, response);
		}

	}

}
