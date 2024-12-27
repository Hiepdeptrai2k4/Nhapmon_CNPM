package BookStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class MapperUsers implements RowMapper<Users>{

	@Override
	public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
		Users users = new Users();
		users.setUserID(rs.getInt("UserID"));
		users.setUsername(rs.getString("Username"));
		users.setPasswordHash(rs.getString("PasswordHash"));
		users.setPhone(rs.getString("Phone"));
		users.setAddress(rs.getString("Address"));
		users.setEmail(rs.getString("Email"));
		
		return users;
	}

}