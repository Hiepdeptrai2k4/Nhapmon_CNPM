package BookStore.Service.User;

import org.springframework.stereotype.Service;

import BookStore.Entity.Bills;

@Service
public class DataService {
	// Service này để lưu dữ liệu chia sẻ giữa các Controller
	
	
	private Bills bills;
	private boolean isBill;
	// isBill: 1 nếu có bill đang cần xử lí, ngược lại 0
	
	
	public Bills getBills() {
		return bills;
	}
	public void setBills(Bills bills) {
		this.bills = bills;
	}
	public boolean isBill() {
		return isBill;
	}
	public void setIsBill(boolean isBill) {
		this.isBill = isBill;
	}
	
	
}
