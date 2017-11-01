package com.demo.service;

import com.demo.model.Cart;

public interface CartService {
	Cart getCart(int cartId);
	   void update(Cart cart);
}
