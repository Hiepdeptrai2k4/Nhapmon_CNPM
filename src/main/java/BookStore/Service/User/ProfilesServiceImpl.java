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
	public UserProfiles GetDataProfiles(int userID) {
		UserProfiles userProfile = new UserProfiles();
		if(profilesDao.GetDataProfiles(userID)==null) return userProfile;
		return profilesDao.GetDataProfiles(userID);
	}


	@Override
	public int EditProfiles(int userID, UserProfiles userProfiles) {
		// TODO Auto-generated method stub
		return profilesDao.EditProfile(userID, userProfiles);
	}


	@Override
	public List<UserProfiles> GetDataProfiles() {
		// TODO Auto-generated method stub
		return profilesDao.GetDataProfiles();
	}
	

}
