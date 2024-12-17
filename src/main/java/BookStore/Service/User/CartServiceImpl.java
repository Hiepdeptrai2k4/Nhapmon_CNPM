package BookStore.Service.User;

import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import BookStore.Dao.CartsDao;
import BookStore.Dao.BooksDao;
import BookStore.Dao.CartItemsDao;
import BookStore.Entity.Books;
import BookStore.Entity.CartItems;
@Service
public class CartServiceImpl implements ICartService {
	@Autowired
	private CartsDao cartDao = new CartsDao();
	@Autowired
	private CartItemsDao cartItemsDao = new CartItemsDao();
	@Autowired
	BooksDao bookDao = new BooksDao();
	
	@Override
	public HashMap<Integer, CartItems> AddCart(int userID,int bookId, HashMap<Integer, CartItems> cart) {
		
		return cartDao.AddCart(userID,bookId, cart);
	}

	@Override
	public HashMap<Integer, CartItems> EditCart(int userID,int bookId, int quantity, HashMap<Integer, CartItems> cart) {
		// TODO Auto-generated method stub
		return cartDao.EditCart(userID,bookId, quantity, cart);
	}

	@Override
	public HashMap<Integer, CartItems> DeleteCart(int userID,int bookId, HashMap<Integer, CartItems> cart) {
		// TODO Auto-generated method stub
		return cartDao.DeleteCart(userID,bookId, cart);
	}

	@Override
	public int totalPrice(HashMap<Integer, CartItems> cart) {
		return cartDao.totalPrice(cart);
	}

	@Override
	public HashMap<Integer, CartItems> LoadCart(int userID, HashMap<Integer, CartItems> cart) {
		cart.clear();
		List<CartItems> cartList =  cartItemsDao.GetCartItems(userID);
		
		for (CartItems cartItem : cartList) {
			Books book = bookDao.GetDataBookById(cartItem.getBookId());
			if(book!=null) {
				cartItem.setBook(book);
			}
            cart.put(cartItem.getBookId(), cartItem);
        }
		return cart;
	}

}
