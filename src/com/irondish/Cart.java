package com.irondish;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class Cart {

	Map <String, Integer>  items = new HashMap<String, Integer>();
	
	public void add(String productName) {
		items.put(productName, 1);
	}
	
	public void debug() {
		System.out.format("===cart===%n");
		for (Entry<String, Integer> next : items.entrySet()) {
			System.out.format("  %s : %d%n", next.getKey(), next.getValue());
		}
	}
}
