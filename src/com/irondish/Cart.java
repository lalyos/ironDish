package com.irondish;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.irondish.domain.Product;

public class Cart {

	Map<String, CartItem> itemMap = new HashMap<String, CartItem>();
	private ProductCatalog catalog;
	
	public Cart(ProductCatalog catalog) {
		this.catalog = catalog;
	}

	public void add(String productName, int more) {
		Product product = catalog.findByName(productName);
		
		CartItem cartItem = itemMap.get(productName);
		if (cartItem == null) {
			itemMap.put(productName, new CartItem(product));
		} else {
			cartItem.add(more);
		}
	}

	public void add(String productName) {
		add(productName, 1);
	}
	
	public List<CartItem> getItems() {
		return new ArrayList<CartItem>(itemMap.values());
	}
}
