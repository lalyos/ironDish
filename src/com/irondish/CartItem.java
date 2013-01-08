package com.irondish;

import com.irondish.domain.Product;

public class CartItem {

	private Product product;
	private int count = 1;
	
	public CartItem(Product product) {
		this.product = product;
	}

	public void add() {
		count++;
	}

	public void add(int more) {
		count += more;
	}

	
	public Product getProduct() {
		return product;
	}
	public int getCount() {
		return count;
	}
	
	
}
