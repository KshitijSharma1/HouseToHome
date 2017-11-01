package com.demo.dao;

import com.demo.model.Cart;
import com.demo.model.CartItem;

public interface CartItemDao {
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItemId);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
}
