package com.tadigital.servlet.customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.tadigital.customer.service.CustomerService;
import com.tadigital.ecommerce.customer.entity.Customer;

/**
 * Servlet implementation class CustomerLoginServlet
 */
@WebServlet("/CustomerLogin")
public class CustomerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerLoginServlet() {
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
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		Customer c=new Customer();
		c.setEmail(email);
		c.setPassword(password);
		
		CustomerService cs=new CustomerService();
		boolean status=cs.loginCustomer(c);
		if(status) {
			HttpSession ses=req.getSession();
			ses.setAttribute("CUSTOMERDATA", c);
			
			javax.servlet.RequestDispatcher rd= req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		}
		else {
			
			req.setAttribute("stl", "N");
			javax.servlet.RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		}
	}

}
