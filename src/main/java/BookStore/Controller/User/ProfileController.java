package BookStore.Controller.User;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Entity.UserProfiles;
import BookStore.Entity.Users;
import BookStore.Service.User.ProfilesServiceImpl;



@Controller
public class ProfileController extends BaseController {
	@Autowired
	ProfilesServiceImpl profilesServiceImlp;
	
	@RequestMapping(value = {"/profile/edit"})
	public ModelAndView ProfileEdit(HttpSession session, Model model) {
		Users user = (Users) session.getAttribute("LoginInfo");
		if(user==null)
		{
			_mvShare.setViewName("redirect:/authen/login");
			_mvShare.addObject("user", new Users());
			return _mvShare;
		}
		_mvShare.addObject("profileForm", new UserProfiles());
		loadCart(session,model);
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
		//_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("user/profile");
		return _mvShare;
	}
}
