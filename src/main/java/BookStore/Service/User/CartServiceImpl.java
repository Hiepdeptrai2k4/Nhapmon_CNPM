package BookStore.Service.User;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import BookStore.Dao.CartsDao;
import BookStore.Entity.CartItems;
@Service
public class CartServiceImpl implements ICartService {
	@Autowired
	private CartsDao cartDao = new CartsDao();
	
	
	@Override
	public HashMap<Integer, CartItems> AddCart(int bookId, HashMap<Integer, CartItems> cart) {
		
		return cartDao.AddCart(bookId, cart);
	}

	@Override
	public HashMap<Integer, CartItems> EditCart(int bookId, int quantity, HashMap<Integer, CartItems> cart) {
		// TODO Auto-generated method stub
		return cartDao.EditCart(bookId, quantity, cart);
	}

	@Override
	public HashMap<Integer, CartItems> DeleteCart(int bookId, HashMap<Integer, CartItems> cart) {
		// TODO Auto-generated method stub
		return cartDao.DeleteCart(bookId, cart);
	}

	@Override
	public double totalPrice(HashMap<Integer, CartItems> cart) {
		
		return cartDao.totalPrice(cart);
	}

}
