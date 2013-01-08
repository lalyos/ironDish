package com.irondish;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.irondish.domain.Product;

/**
 * Servlet implementation class StoreServlet
 */
public class StoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**	
     * @see HttpServlet#HttpServlet()
     */
    public StoreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		List<Product> attribute = (List<Product>) getServletContext().getAttribute("products");
		
		response.getWriter().println("<h2>products</h2><ul>");
		for (Product product : attribute) {
			response.getWriter().println("<li><a href='" + getServletContext().getContextPath()
					+ "/cart?add=" + product.getName()  + "' >" + product.getName() + "</a></li>");
		}
		response.getWriter().println("</ul>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
