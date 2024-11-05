package BookStore.Service.User;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Entity.CartItems;

@Service
public interface ICartService {
	@Autowired
	public HashMap<Integer, CartItems> AddCart(int bookId,  HashMap<Integer, CartItems> cart );
	public HashMap<Integer, CartItems> EditCart(int bookId,int quantity,  HashMap<Integer, CartItems> cart );
	public HashMap<Integer, CartItems> DeleteCart(int bookId,  HashMap<Integer, CartItems> cart );
	public double totalPrice(HashMap<Integer, CartItems> cart);
	
}
