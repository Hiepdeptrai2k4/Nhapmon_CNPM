package BookStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Dao.ProfilesDao;
import BookStore.Entity.UserProfiles;


@Service
public class ProfilesServiceImpl implements IProfilesService {
	@Autowired
	private ProfilesDao profilesDao;
	

	@Override
	public List<UserProfiles> GetDataProfiles() {
		return profilesDao.GetDataProfiles();
	}

	@Override
	public int EditProfiles(int userID, UserProfiles userProfiles) {
		// TODO Auto-generated method stub
		return profilesDao.EditProfile(userID, userProfiles);
	}


}