package com.demo.service;

import com.demo.model.Cart;
import com.demo.model.CartItem;

public interface CartItemService {
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItemId);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
}
