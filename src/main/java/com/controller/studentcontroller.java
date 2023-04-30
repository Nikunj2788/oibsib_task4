package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.qustion;
import com.bean.student;
import com.dao.studentdao;


/**
 * Servlet implementation class studentcontroller
 */
@WebServlet("/studentcontroller")
public class studentcontroller extends HttpServlet {
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 PrintWriter out = response.getWriter();
		    String action  = request.getParameter("action");
		    
		    if(action.equalsIgnoreCase("signup")) {
		    	student c = new student();
		    	c.setName(request.getParameter("name"));
		    	c.setContactno(request.getParameter("contactno"));	    	
		    	c.setEmail(request.getParameter("email"));
		    	c.setPassword(request.getParameter("password"));
		    	c.setConfirmpass(request.getParameter("confirmpass"));
		    	
		    	System.out.println(request.getParameter("name"));
		    	System.out.println(request.getParameter("contactno"));	    	    	
		    	System.out.println(request.getParameter("email"));
		    	System.out.println(request.getParameter("password"));
		    	System.out.println(request.getParameter("confirmpass"));
		    	studentdao.insertop(c);
		    	
			    response.sendRedirect("Loginpage.jsp"); 

		    }
		    
		    if(action.equalsIgnoreCase("login")) {
		    	student c = new student();
		    	c.setEmail(request.getParameter("email"));
		    	c.setPassword(request.getParameter("password"));
		    	String email = request.getParameter("email");
		    	String pass = request.getParameter("password");
		   
		    	student cc = studentdao.checklogin(c);
		    	if(email.equalsIgnoreCase("") || pass.equalsIgnoreCase("")) {
		    		out.print("Email and password is blank");
		    		request.getRequestDispatcher("login.jsp").include(request, response);
		    	}
		    	else {
		    		HttpSession seesion = request.getSession();
		    		seesion.setAttribute("abc", cc);
		    		
		    		request.getRequestDispatcher("timer.jsp").forward(request, response);
		    	}
		    }
		    
			/*
			 * if(action.equalsIgnoreCase("submit")) { qustion c = new qustion();
			 * c.setSid(Integer.parseInt(request.getParameter("sid")));
			 * 
			 * c.setQ1(request.getParameter("q1")); c.setQ2(request.getParameter("q2"));
			 * c.setQ3(request.getParameter("q3")); c.setQ4(request.getParameter("q4"));
			 * c.setQ5(request.getParameter("q5")); c.setQ6(request.getParameter("q6"));
			 * c.setQ7(request.getParameter("q7")); c.setQ8(request.getParameter("q8"));
			 * c.setQ9(request.getParameter("q9")); c.setQ10(request.getParameter("q10"));
			 * 
			 * System.out.println(Integer.parseInt(request.getParameter("sid")));
			 * 
			 * System.out.println(request.getParameter("q1"));
			 * System.out.println(request.getParameter("q2"));
			 * System.out.println(request.getParameter("q3"));
			 * System.out.println(request.getParameter("q4"));
			 * System.out.println(request.getParameter("q5"));
			 * System.out.println(request.getParameter("q6"));
			 * System.out.println(request.getParameter("q7"));
			 * System.out.println(request.getParameter("q8"));
			 * System.out.println(request.getParameter("q9"));
			 * System.out.println(request.getParameter("q10"));
			 * 
			 * studentdao.insertqus(c);
			 * 
			 * response.sendRedirect("timer.jsp");
			 * 
			 * }
			 */		    
		    if(action.equalsIgnoreCase("update")) {
		    	
				student d= new student();
				d.setId(Integer.parseInt(request.getParameter("id")));				 
				d.setName(request.getParameter("name"));
				d.setContactno(request.getParameter("contactno"));	    		    		    		    	
				d.setEmail(request.getParameter("email"));	    		    		    		    	
				d.setPassword(request.getParameter("password"));   
			    d.setConfirmpass(request.getParameter("confirmpass"));
				studentdao.updateUser(d);
				
				response.sendRedirect("Loginpage.jsp");
			}
		    
		    if(action.equalsIgnoreCase("submit")) {
		    	String q1 = request.getParameter("q1");
		    	String q2 = request.getParameter("q2");
		    	String q3 = request.getParameter("q3");
		    	String q4 = request.getParameter("q4");
		    	String q5 = request.getParameter("q5");
		    	String q6 = request.getParameter("q6");
		    	String q7 = request.getParameter("q7");
		    	String q8 = request.getParameter("q8");
		    	String q9 = request.getParameter("q9");
		    	String q10 = request.getParameter("q10");
		    
		    	int score = 0;
		    	 if (q1 != null && !q1.isEmpty() && q1.equals("a")) {
		    	      score += 1;
		    	    }
		    	    if (q2 != null && !q2.isEmpty() && q2.equals("b")) {
		    	      score += 1;
		    	    }
		    	    if (q3 != null && !q3.isEmpty() && q3.equals("b")) {
			    	      score += 1;
			    	    }
		    	    if (q4 != null && !q4.isEmpty() && q4.equals("b")) {
			    	      score += 1;
			    	    }
		    	    if (q5 != null && !q5.isEmpty() && q5.equals("b")) {
			    	      score += 1;
			    	    }
		    	    if (q6 != null && !q6.isEmpty() && q6.equals("b")) {
			    	      score += 1;
			    	    }
		    	    if (q7 != null && !q7.isEmpty() && q7.equals("b")) {
			    	      score += 1;
			    	    }
		    	    if (q8 != null && !q8.isEmpty() && q8.equals("b")) {
			    	      score += 1;
			    	    }
		    	    if (q9 != null && !q9.isEmpty() && q9.equals("b")) {
			    	      score += 1;
			    	    }
		    	    if (q10 != null && !q10.isEmpty() && q10.equals("b")) {
			    	      score += 1;
			    	    }
			    	
		    	request.setAttribute("score", score);
		    	response.sendRedirect("timer.jsp");
		    }
		   
		  
		
	}

}
