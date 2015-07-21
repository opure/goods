package com.oneler.user;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class jqueryservlet
 */
@WebServlet("/jqueryservlet")
public class jqueryservlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse rsp) throws IOException{
      String value=req.getParameter("val");
      System.out.println(value);
      if(value.equals("caohao")){  
    	  rsp.getWriter().print("true");
      }
      else{
    	  rsp.getWriter().print("false");
      }
      
		
	}

}
