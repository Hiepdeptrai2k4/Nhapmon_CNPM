package BookStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.lang.Nullable;

public class MapperBillDetails implements RowMapper<BillDetails> {

	@Override
	@Nullable
	public BillDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
		BillDetails billDetails = new BillDetails();
		billDetails.setBillID(rs.getInt("BillID"));
		billDetails.setBookID(rs.getInt("BookID"));
		billDetails.setQuantity(rs.getInt("quantity"));
		
		return billDetails;
	}

}
