package BookStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.lang.Nullable;

public class MapperUserProfiles implements RowMapper<UserProfiles> {

	@Override
	@Nullable
	public UserProfiles mapRow(ResultSet rs, int rowNum) throws SQLException {
		UserProfiles userProfiles = new UserProfiles();
		userProfiles.setUserID(rs.getInt("UserID"));
		userProfiles.setFirstName(rs.getString("FirstName"));
		userProfiles.setLastName(rs.getString("LastName"));
		userProfiles.setGender(rs.getInt("Gender"));
		userProfiles.setYear(rs.getInt("Year"));
		userProfiles.setMonth(rs.getInt("Month"));
		userProfiles.setDay(rs.getInt("Day"));
		return userProfiles;
		
	}

}
