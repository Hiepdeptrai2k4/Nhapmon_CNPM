package BookStore.Controller.User;



import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import BookStore.Entity.ChangePassForm;
import BookStore.Entity.UserProfiles;
import BookStore.Entity.Users;
import BookStore.Service.User.AccountServiceImpl;
import BookStore.Service.User.ProfilesServiceImpl;



@Controller
public class ProfileController extends BaseController {
	@Autowired
	ProfilesServiceImpl profilesServiceImlp;
	@Autowired 
	AccountServiceImpl accountServiceImpl;
	
	@RequestMapping(value = {"/profile/edit"})
	public ModelAndView ProfileEdit(HttpSession session, Model model) {
		Users user = (Users) session.getAttribute("LoginInfo");
		if(user==null)
		{
			_mvShare.setViewName("redirect:/authen/login");
			_mvShare.addObject("user", new Users());
			return _mvShare;
		}
		_mvShare.addObject("statusChangeU", null);
		String statusChangeU = (String) session.getAttribute("statusChangeU");
	    if (statusChangeU != null) {
	        _mvShare.addObject("statusChangeU", statusChangeU);
	        session.removeAttribute("statusChangeU");  
	    }
	    _mvShare.addObject("statusChangePass", null);
		String statusChangePass = (String) session.getAttribute("statusChangePass");
	    if (statusChangePass != null) {
	        _mvShare.addObject("statusChangePass", statusChangePass);
	        session.removeAttribute("statusChangePass");  
	    }
		
		_mvShare.addObject("profileForm", new UserProfiles());
		_mvShare.addObject("passEditForm", new ChangePassForm());
		_mvShare.addObject("userEditForm", new Users());
		loadCart(session,model);
		loadBill(session,model);
		_mvShare.addObject("profile",profilesServiceImlp.GetDataProfiles(user.getUserID()));
		_mvShare.setViewName("user/edit_profile");
		return _mvShare;
	}
	
	@RequestMapping(value = {"/profile/edit"}, method =RequestMethod.POST)
	public ModelAndView EditProfile(HttpSession session, @ModelAttribute("profileForm") UserProfiles userProfiles) {
		Users user = (Users) session.getAttribute("LoginInfo");
		int count = profilesServiceImlp.EditProfiles(user.getUserID(), userProfiles);
		if(count >0) {
			_mvShare.addObject("status", "Edit thành công");
		}
		else {
			_mvShare.addObject("status", "Edit thất bại");
		}
		_mvShare.setViewName("redirect:");
		return _mvShare;
	}
	
	
	@RequestMapping(value = {"/profile"})
	public ModelAndView Profile(HttpSession session, Model model) {
		loadCart(session,model);
		Users user = (Users) session.getAttribute("LoginInfo");
		if(user==null) {
			_mvShare.setViewName("redirect:/authen/login");
			_mvShare.addObject("user", new Users());
			return _mvShare;
		}
		
		_mvShare.addObject("profile",profilesServiceImlp.GetDataProfiles(user.getUserID()));
		
		//_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("user/profile");
		return _mvShare;
	}
	@RequestMapping(value = {"/profile/editpass"}, method =RequestMethod.POST)
	public ModelAndView EditPass(HttpSession session, @ModelAttribute("passEditForm") ChangePassForm changePassform) {
		
		Users user = (Users) session.getAttribute("LoginInfo");
		if(!changePassform.getNewPass().equals(changePassform.getNewPass2())) {
			 session.setAttribute("statusChangePass", "Mật khẩu nhập lại không đúng");
			
			_mvShare.setViewName("redirect:/profile/edit");
			return _mvShare;
		}
		if(BCrypt.checkpw(changePassform.getCurrPass(), user.getPasswordHash())==false) {
			 session.setAttribute("statusChangePass", "Mật khẩu hiện tại không đúng");
			
			_mvShare.setViewName("redirect:/profile/edit");
			return _mvShare;
		}
		Users newUser = accountServiceImpl.EditPass(user, changePassform.getNewPass());
		if(newUser==null) {
			 session.setAttribute("statusChangePass", "Thay đổi mật khẩu thất bại");
			
			_mvShare.setViewName("redirect:/profile/edit");
			return _mvShare;
		}
		else {
			session.removeAttribute("LoginInfo");
			session.setAttribute("LoginInfo", newUser);
		}
		 session.setAttribute("statusChangePass", "Thay đổi mật khẩu thành công");
		_mvShare.setViewName("redirect:/profile/edit");
		return _mvShare;
	}
	@RequestMapping(value = {"/profile/edituser"}, method =RequestMethod.POST)
	public ModelAndView EditUser(HttpSession session, @ModelAttribute("userEditForm") Users changeUser) {
		Users user = (Users) session.getAttribute("LoginInfo");
		user.setAddress(changeUser.getAddress());
		user.setPhone(changeUser.getPhone());
		Users newUser = accountServiceImpl.EditUser(user);
		if(newUser==null) {
			 session.setAttribute("statusChangeU", "Thay đổi liên lạc thất bại");
			
			_mvShare.setViewName("redirect:/profile/edit");
			return _mvShare;
		}
		
		else {
			session.removeAttribute("LoginInfo");
			session.setAttribute("LoginInfo", newUser);
		}
		
		 session.setAttribute("statusChangeU", "Thay đổi thành công");
		
		
		_mvShare.setViewName("redirect:/profile/edit");
		return _mvShare;
	}
	
}
