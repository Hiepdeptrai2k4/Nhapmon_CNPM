package BookStore.Service.User;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Dao.BillDetailsDao;
import BookStore.Dao.BillsDao;
import BookStore.Dao.CartItemsDao;
import BookStore.Entity.Bills;
import BookStore.Entity.CartItems;
import BookStore.Entity.Users;

@Service
public class BillServiceImpl implements IBillService{
	@Autowired
	private BillsDao billsDao = new BillsDao();
	@Autowired
	BillDetailsDao billDetailDao;
	@Autowired
	CartItemsDao cartItemsDao;
	@Autowired
	CartServiceImpl cartService;
	
	
	@Override
	public HashMap<Integer, CartItems> addBills(Users user, Bills bill, HashMap<Integer, CartItems> cart) {
		boolean isGuest;
		if (user!=null) {
			bill.setUserID(user.getUserID());
			isGuest = false;
		}
		else isGuest = true;
		bill.setState(1);
		LocalDateTime currentTime = LocalDateTime.now();
        DateTimeFormatter sqlFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String time = currentTime.format(sqlFormatter);
        bill.setTime(time);
        bill.setTotal(cartService.totalPrice(cart)*9/10);
		int newBillID = billsDao.AddBill(bill, isGuest);
		int result = billDetailDao.AddBillDetail(newBillID, cart);
		if (result !=0) {
			if(user!=null) cartItemsDao.DeleteAll(user.getUserID());
			cart.clear();
		}
		return cart;
	}
	
}
