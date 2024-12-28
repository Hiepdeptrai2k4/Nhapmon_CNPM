package BookStore.Service.User;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Entity.BigBillDetails;
import BookStore.Entity.BillDetails;
import BookStore.Entity.Bills;
import BookStore.Entity.CartItems;
import BookStore.Entity.Users;
@Service
public interface IBillService {
	@Autowired
	public HashMap<Integer, CartItems> addBills(Users user, Bills bill, HashMap<Integer, CartItems> cart);
	@Autowired
	public List<Bills> getBills(Users user);
	@Autowired
	public List<BillDetails> getBillDetails(int billID);
	@Autowired
	public List<BigBillDetails> getBigBillDetails (int billID);
	@Autowired
	public Bills getBill (List<Bills> bills,int billID);
}
