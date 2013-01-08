package com.irondish.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.irondish.domain.Product;

/**
 * Application Lifecycle Listener implementation class StartupListener
 *
 */
public class StartupListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public StartupListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent event) {
    	
    	List<Product> products = getProducts(); 
    	event.getServletContext().setAttribute("products", products);
    }

	private List<Product> getProducts() {
		List<Product> ret =new ArrayList<Product>();
		ret.add(new Product("iron bucket", 100));
		ret.add(new Product("wooden bucket", 150));
		ret.add(new Product("diamond bucket", 999999));
		ret.add(new Product("plastic bucket", 50));
		return ret;
	}

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0) {
        // TODO Auto-generated method stub
    }
	
}
