package BookStore.Service.User;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Dao.BillsDao;

import BookStore.Entity.Bills;
import BookStore.Entity.Users;

@Service
public class BillServiceImpl implements IBillService{
	@Autowired
	private BillsDao billsDao = new BillsDao();
	
	@Override
	public int addBills(Users user, Bills bill, int totalPrice) {
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
        bill.setTotal(totalPrice);
		return billsDao.AddBill(bill, isGuest);
	}
	
}
