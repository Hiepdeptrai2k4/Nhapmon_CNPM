package BookStore.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import BookStore.Entity.Bills;
import BookStore.Entity.Books;

@Service
public class DataService {
	// Service này để lưu dữ liệu chia sẻ giữa các Controller
	
	
	private Bills bills;
	private boolean isBill;
	private List<Books> listBook;
	private boolean search;
	// isBill: 1 nếu có bill đang cần xử lí, ngược lại 0
	
	
	public Bills getBills() {
		return bills;
	}
	public List<Books> getListBook() {
		return listBook;
	}
	public void setListBook(List<Books> listBook) {
		this.listBook = listBook;
	}
	public boolean isSearch() {
		return search;
	}
	public void setSearch(boolean search) {
		this.search = search;
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
