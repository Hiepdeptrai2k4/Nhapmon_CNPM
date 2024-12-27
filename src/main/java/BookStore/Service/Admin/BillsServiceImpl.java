package BookStore.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Dao.BillsDao;
import BookStore.Entity.Bills;

@Service
public class BillsServiceImpl implements IBillsService {
	@Autowired
	BillsDao billsDao;

	@Override
	public List<Bills> GetDataAllBill() {
		return billsDao.GetDataAllBill();
	}

	@Override
	public int ConfirmBill(Bills bill) {
		return billsDao.ConfirmBill(bill);
	}

	@Override
	public Bills GetDataBillByID(int id) {
		return billsDao.GetDataBillByID(id);
	}

}
