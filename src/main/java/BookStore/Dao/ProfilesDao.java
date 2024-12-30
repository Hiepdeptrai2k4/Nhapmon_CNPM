package BookStore.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;


import BookStore.Entity.UserProfiles;
import BookStore.Entity.MapperUserProfiles;

@Repository
public class ProfilesDao extends BaseDao{
	public UserProfiles GetDataProfiles(int userID) {
		List<UserProfiles> list = new ArrayList<UserProfiles>();
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM profiles ");
		sql.append("WHERE UserID = "+userID+" ");
		
		list = _jdbcTemplate.query(sql.toString(), new MapperUserProfiles());
		return list.get(0);
	}
	
	public int EditProfile(int userID, UserProfiles userProfile) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE ");
		sql.append("profiles ");
		sql.append("SET ");
		sql.append("  FirstName = '" + userProfile.getFirstName() +"', ");
		sql.append("  LastName = '" + userProfile.getLastName() +"', ");
		sql.append("  Year = " + userProfile.getYear() +", ");
		sql.append("  Month = " + userProfile.getMonth() +", ");
		sql.append("  Day = " + userProfile.getDay() +" ");
		sql.append("WHERE UserID = " + userID+" ");
		int insert= _jdbcTemplate.update(sql.toString());
		return insert;
	}
	public int AddProfile(int userID, UserProfiles userProfile) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO ");
		sql.append("profiles ");
		sql.append("(`UserID`, `FirstName`, `LastName`, `Gender`, `Year`, `Month`, `Day`) ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append(""+userID+", ");
		sql.append("'" + userProfile.getFirstName() +"', ");
		sql.append("'" + userProfile.getLastName() +"', ");
		sql.append(""+0+", ");
		sql.append("" + userProfile.getYear() +", ");
		sql.append("" + userProfile.getMonth() +", ");
		sql.append("" + userProfile.getDay() +" ");
		sql.append(") ");
		int insert= _jdbcTemplate.update(sql.toString());
		return insert;
	}
	public List<UserProfiles> GetDataProfiles() {
		List<UserProfiles> list = new ArrayList<UserProfiles>();
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM profiles ");
		
		
		list = _jdbcTemplate.query(sql.toString(), new MapperUserProfiles());
		return list;
	}
	
}
