package BookStore.Dao;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import BookStore.Entity.Bills;
import BookStore.Entity.Books;
import BookStore.Entity.MapperBills;
@Transactional
@Repository
public class BillsDao extends BaseDao{
	@Autowired
	JdbcTemplate jdbcTemplateForBill;
	
	@SuppressWarnings("null")
	public int AddBill(Bills bill, boolean isGuest) {
        String sql = "INSERT INTO bills (" +
                     (isGuest ? "" : "UserID, ") +
                     "Phone, Name, Address, Time, Total, State) " +
                     "VALUES (" +
                     (isGuest ? "" : "?, ") +
                     "?, ?, ?, ?, ?, ?)";
        
        GeneratedKeyHolder keyHolder = new GeneratedKeyHolder();
        
        jdbcTemplateForBill.update(connection -> {
            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            int paramIndex = 1;
            if (!isGuest) {
                ps.setInt(paramIndex++, bill.getUserID());
            }
            ps.setString(paramIndex++, bill.getPhone());
            ps.setString(paramIndex++, bill.getName());
            ps.setString(paramIndex++, bill.getAddress());
            ps.setTimestamp(paramIndex++, Timestamp.valueOf(bill.getTime()));
            ps.setDouble(paramIndex++, bill.getTotal());
            ps.setInt(paramIndex++, bill.getState());
            return ps;
        }, keyHolder);

        // Lấy BillID
        int billID = keyHolder.getKey().intValue();
        
        
        return billID;
    }
	
	public List<Bills> GetDataBill(int userID){
		List<Bills> list = new ArrayList<Bills>();
		String sql = "SELECT * FROM bills where UserID = "+userID;
		list = _jdbcTemplate.query(sql, new MapperBills());
		return list;
	}
	
	public Bills GetDataBillByID(int id){
		List<Bills> list = new ArrayList<Bills>();
		String sql = "SELECT * FROM bills where BillID = "+id;
		list = _jdbcTemplate.query(sql, new MapperBills());
		return list.get(0);
	}
	
	public List<Bills> GetDataAllBill(){
		List<Bills> list = new ArrayList<Bills>();
		String sql = "SELECT * FROM bills ";
		list = _jdbcTemplate.query(sql, new MapperBills());
		return list;
	}
	
	 public int ConfirmBill(Bills bill) {
		 StringBuffer sql = new StringBuffer();
	        sql.append("UPDATE bills ");
	        sql.append("SET ");
	        sql.append("   State = '" + bill.getState() + "' ");
	        sql.append("WHERE ");
	        sql.append("   BillID = '" + bill.getBillID() + "'");

	        int update = _jdbcTemplate.update(sql.toString());
	        return update;
	    }
}