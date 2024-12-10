package BookStore.Service.User;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Dao.ProfilesDao;
import BookStore.Dao.UsersDao;
import BookStore.Entity.UserProfiles;
import BookStore.Entity.Users;
@Service
public class AccountServiceImpl implements IAccountService {
	@Autowired
	UsersDao userDao = new UsersDao();
	@Autowired
	ProfilesDao profilesDao = new ProfilesDao();
	
	@Override
	public int AddAccount(Users user) {
		Users checkUser = userDao.GetUserByAcc(user);
		if(checkUser!=null) return 0;
		else {
			user.setPasswordHash(BCrypt.hashpw(user.getPasswordHash(), BCrypt.gensalt(12)) );
			int checkAddAcc = userDao.AddAccount(user);
			Users newUser = userDao.GetUserByAcc(user);
			int checkAddProfile = profilesDao.AddProfile(newUser.getUserID(), new UserProfiles());
			return checkAddAcc&checkAddProfile;
		}
	}
	
	@Override
	public Users CheckAccount(Users user) {
		String pass = user.getPasswordHash();
		user = userDao.GetUserByAcc(user);
		if(user!=null) {
			if(BCrypt.checkpw(pass, user.getPasswordHash())) {
				return user;
			}
			else return null;
		}
		
		return null;
		
		
	}

}
