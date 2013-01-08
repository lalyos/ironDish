package com.irondish;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.irondish.domain.Product;

public class SimpleProductCatalog implements ProductCatalog {

	Map<String, Product> productMap = new HashMap<String, Product>();
	
	public SimpleProductCatalog() {
		add(new Product("iron bucket", 100));
		add(new Product("wooden bucket", 150));
		add(new Product("diamond bucket", 999999));
		add(new Product("plastic bucket", 50));

	}
	private void add(Product product) {
		productMap.put(product.getName(), product);
		
	}
	@Override
	public Product findByName(String productName) {
		Product product = productMap.get(productName);
		if (product == null) {
			throw new ProductNotFoundException(productName);
		}
		return product;
	}

	@Override
	public List<Product> getProducts() {
		return new ArrayList<Product>(productMap.values());
	}

}
