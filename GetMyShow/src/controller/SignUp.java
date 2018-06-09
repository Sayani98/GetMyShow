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
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String gender = request.getParameter("gender");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String password = request.getParameter("password");
		
		TheBean bobj = new TheBean();
		bobj.setName(name);
		bobj.setAddress(address);
		bobj.setEmail(email);
		bobj.setContact(contact);
		bobj.setGender(gender);
		bobj.setState(state);
		bobj.setCity(city);
		bobj.setPassword(password);
		
		TheDaou dobj = new TheDaou();
		int result1 = dobj.addUser(bobj);
		if(result1 != 0){
			out.println("Signed Up Succesfully....Sign In below");
			RequestDispatcher rd = request.getRequestDispatcher("signin.jsp");
			rd.include(request, response);
		}
		else{
			out.println("Unknown Error Occured...try again");
			RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
			rd.include(request, response);
		}
	}

}
