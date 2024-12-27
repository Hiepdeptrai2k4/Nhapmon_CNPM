package BookStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Entity.UserProfiles;

@Service
public interface IProfilesService {
	
	@Autowired
	public List<UserProfiles> GetDataProfiles() ;
	public int EditProfiles(int userID, UserProfiles userProfiles);
	
}