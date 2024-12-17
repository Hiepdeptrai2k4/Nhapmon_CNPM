package BookStore.Service.User;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Entity.CartItems;

@Service
public interface ICartService {
	@Autowired
	public HashMap<Integer, CartItems> LoadCart(int userID,  HashMap<Integer, CartItems> cart);
	public HashMap<Integer, CartItems> AddCart(int userID,int bookId,  HashMap<Integer, CartItems> cart );
	public HashMap<Integer, CartItems> EditCart(int userID,int bookId,int quantity,  HashMap<Integer, CartItems> cart );
	public HashMap<Integer, CartItems> DeleteCart(int userID,int bookId,  HashMap<Integer, CartItems> cart );
	public int totalPrice(HashMap<Integer, CartItems> cart);
	
}
