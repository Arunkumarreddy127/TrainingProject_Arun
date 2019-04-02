package com.tadigital.servlet.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.customer.service.CustomerService;
import com.tadigital.ecommerce.customer.entity.Customer;

/**
 * Servlet implementation class CustomerRegistrationServlet
 */
@WebServlet("/CustomerRegister")
public class CustomerRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerRegistrationServlet() {
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
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*// TODO Auto-generated method stub
		doGet(request, response);*/
		String s[]=req.getParameter("name").split(" ");
		String fname="";
		String lname="";
		int n=s.length;
		if(n==1) {
			fname=s[0];
		}
		else if(n==2){
			fname=s[0];
			lname=s[1];
		}
		else {
			fname=s[0];
			for(int i=1;i<n;i++) {
				lname=lname+s[i];
			}
		}
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		Customer c=new Customer();
		c.setFirstName(fname);
		c.setLastName(lname);
		c.setEmail(email);
		c.setPassword(password);
		
		CustomerService cs=new CustomerService();
		boolean status=cs.registerCustomer(c);
		if(status) {
			
			req.setAttribute("str", "Y");
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		}
		else {
			
			req.setAttribute("str", "N");
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		}
		
	}

}
