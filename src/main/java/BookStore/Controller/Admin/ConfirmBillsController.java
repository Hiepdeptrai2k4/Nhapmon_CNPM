package BookStore.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Entity.Bills;
import BookStore.Service.User.BillServiceImpl;

@Controller
public class ConfirmBillsController extends BaseAdminController {
	@Autowired
    private BillServiceImpl billService; // Service xử lý logic liên quan đến hóa đơn

    // Hiển thị giao diện xác nhận hóa đơn
    @RequestMapping(value = "/admin/xac-nhan/{id}", method = RequestMethod.GET)
    public ModelAndView ConfirmBillPage(@PathVariable("id") int id) {
        Bills bill = billService.GetDataBillByID(id); // Lấy thông tin hóa đơn cần xác nhận
        _mvShare.addObject("bill", bill); // Gửi thông tin hóa đơn đến view
        _mvShare.setViewName("admin/billdetail"); // Tên file giao diện
        return _mvShare;
    }

    @RequestMapping(value = "/admin/xac-nhan/{id}", method = RequestMethod.POST)

    public ModelAndView ConfirmBill(@ModelAttribute("bill") Bills bill, @PathVariable("id") int id) {

    try {
    // Gọi service để xác nhận hóa đơn
    int result = billService.ConfirmBill(bill);

    if (result > 0) {
    _mvShare.addObject("status", "Xác nhận hóa đơn thành công.");
    } else {
    _mvShare.addObject("status", "Xác nhận hóa đơn thất bại.");
    }
    } catch (Exception e) {
    _mvShare.addObject("status", "Lỗi khi xác nhận hóa đơn: " + e.getMessage());
    }

    _mvShare.setViewName("redirect:/admin/xac-nhan/{id}");
    return _mvShare;
    }
}

