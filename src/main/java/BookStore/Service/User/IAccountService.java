package BookStore.Service.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Entity.Users;

@Service
public interface IAccountService {
	@Autowired
	public int AddAccount(Users user);
	public Users CheckAccount(Users user);
	public Users EditPass(Users user, String newPass);
	public Users EditUser(Users user);
}
