package com.irondish;

public class ProductNotFoundException extends RuntimeException {

	private String productName;

	public ProductNotFoundException(String productName) {
		super();
		this.productName = productName;
	}

	public String getProductName() {
		return productName;
	} 

}
