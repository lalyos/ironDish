package com.irondish.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    	
    	event.getServletContext().setAttribute("products", getProducts());
    }

	private Map<String, Product> getProducts() { 
		Map<String, Product> ret = new HashMap<String, Product>();

		add(ret, new Product("iron bucket", 100));
		add(ret, new Product("wooden bucket", 150));
		add(ret, new Product("diamond bucket", 999999));
		add(ret, new Product("plastic bucket", 50));
		return ret;
	}
	
	

	private void add(Map<String, Product> ret, Product product) {
		ret.put(product.getName(), product);
	}

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0) {
        // TODO Auto-generated method stub
    }
	
}
