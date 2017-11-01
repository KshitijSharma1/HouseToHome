package com.demo.dao.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.CartDao;
import com.demo.dao.CustomerOrderDao;
import com.demo.model.Cart;
import com.demo.model.CartItem;
import com.demo.model.CustomerOrder;

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private CartDao cartDao;
	
	public void addCustomerOrder(CustomerOrder customerOrder) {		
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(customerOrder);
		System.out.println("Customer order dao impl "+ customerOrder.getOrderId());
		session.flush();
	}

	public double getCustomerOrderGrandTotal(int cartId) {
		// TODO Auto-generated method stub
		Cart cart = cartDao.getCart(cartId);
		List<CartItem> cartItems = cart.getCartItems();
		double grandTotal = 0.0;
		for (CartItem cartItem : cartItems) {
			grandTotal = grandTotal + cartItem.getTotalPrice();
		}
		return grandTotal;
		// update cart set grandtotal=? where cartid=?
	}

}