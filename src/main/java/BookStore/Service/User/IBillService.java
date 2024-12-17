package BookStore.Service.User;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Entity.Bills;
import BookStore.Entity.CartItems;
import BookStore.Entity.Users;
@Service
public interface IBillService {
	@Autowired
	public HashMap<Integer, CartItems> addBills(Users user, Bills bill, HashMap<Integer, CartItems> cart);
	

}
