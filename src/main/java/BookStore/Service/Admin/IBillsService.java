package BookStore.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import BookStore.Entity.Bills;

@Service
public interface IBillsService {
	public List<Bills> GetDataAllBill();
	 public int ConfirmBill(Bills bill) ;
	 public Bills GetDataBillByID(int id);
}
