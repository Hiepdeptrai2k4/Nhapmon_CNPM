package BookStore.Service.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Entity.Bills;
import BookStore.Entity.Users;
@Service
public interface IBillService {
	@Autowired
	public int addBills(Users user, Bills bill, int totalPrice);
	

}
