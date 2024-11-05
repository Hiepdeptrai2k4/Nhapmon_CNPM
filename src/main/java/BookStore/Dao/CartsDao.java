package BookStore.Dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import BookStore.Entity.Books;
import BookStore.Entity.CartItems;

@Repository
public class CartsDao extends BaseDao {
	
	@Autowired
	BooksDao bookDao = new BooksDao();
	
	public HashMap<Integer, CartItems> AddCart(int bookId,  HashMap<Integer, CartItems> cart ){
		if (cart==null) {
			return cart;
		}
		CartItems cartItem = new CartItems();
		
		Books book = bookDao.GetDataBookById(bookId);
		if(book!=null) {
			cartItem.setBookId(bookId);
			cartItem.setBook(book);
			cartItem.setQuantity(1);
		}
		cart.put(bookId, cartItem);
		return cart;
		
	}
	public HashMap<Integer, CartItems> EditCart(int bookId,int quantity,  HashMap<Integer, CartItems> cart ){
		if (cart==null) {
			return cart;
		}
		CartItems cartItem = new CartItems();
		if(cart.containsKey(bookId)) {
			cartItem = cart.get(bookId);
			cartItem.setQuantity(quantity);
		}
		
		cart.put(bookId, cartItem);
		return cart;
		
	}
	public HashMap<Integer, CartItems> DeleteCart(int bookId,  HashMap<Integer, CartItems> cart ){
		if (cart==null) {
			return cart;
		}
		if(cart.containsKey(bookId)) {
			cart.remove(bookId);
		}
		return cart;
		
	}
	
	public double totalPrice(HashMap<Integer, CartItems> cart) {
		double totalPrice=0;
		for (Map.Entry<Integer, CartItems> entry : cart.entrySet()) {
			Integer key = entry.getKey();
            CartItems item = entry.getValue();
            Books book = item.getBook();
            totalPrice+= book.getPrice()*item.getQuantity();
		}
		return totalPrice;
		
	}
}
