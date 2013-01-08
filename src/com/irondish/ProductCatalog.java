package com.irondish;

import java.util.List;

import com.irondish.domain.Product;

public interface ProductCatalog {

	public Product findByName(String productName);
	public List<Product> getProducts();
}
