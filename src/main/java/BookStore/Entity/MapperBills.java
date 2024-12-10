package BookStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.lang.Nullable;

public class MapperBills implements RowMapper<Bills> {

	@Override
	@Nullable
	public Bills mapRow(ResultSet rs, int rowNum) throws SQLException {
		Bills bills = new Bills();
		bills.setBillID(rs.getInt("BillID"));
		bills.setUserID(rs.getInt("UserID"));
		bills.setPhone(rs.getString("Phone"));
		bills.setName(rs.getString("Name"));
		bills.setAddress(rs.getString("Address"));
		bills.setTime(rs.getString("Time"));
		bills.setTotal(rs.getInt("Total"));
		bills.setState(rs.getInt("State"));
		return bills;
		
	}
	
}
