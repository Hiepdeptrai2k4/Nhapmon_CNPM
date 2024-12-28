package BookStore.Controller.User;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Entity.BigBillDetails;
import BookStore.Entity.Bills;
import BookStore.Entity.Users;
import BookStore.Service.User.BillServiceImpl;
import BookStore.Service.User.CartServiceImpl;

@Controller
public class BillController extends BaseController{
	
	@Autowired
	BillServiceImpl billServiceImpl;
	
	@RequestMapping(value = {"/bill/{id}"})
	public ModelAndView Index(@PathVariable int id,HttpSession session, Model model) {
		//ModelAndView mv= new ModelAndView("user/index");
		loadCart(session,model);
		List<Bills> bills = loadBill(session,model);
		List<BigBillDetails> bigBillDetail = billServiceImpl.getBigBillDetails(id);
		Bills bill = billServiceImpl.getBill(bills, id);
		model.addAttribute("billDetail", bill);
		model.addAttribute("billItemDetail", bigBillDetail);
		
		
		//_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("user/bill");
		return _mvShare;
	}
}
