package BookStore.Dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import BookStore.Entity.CartItems;

@Repository
public class BillDetailsDao extends BaseDao {
	
	public int AddBillDetail(int billID, CartItems cartItem) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO ");
		sql.append("billdetails ");
		sql.append("( ");
		sql.append(" BillID, ");
		sql.append(" BookID, ");
		sql.append(" quantity ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append(" '"+billID + "', ");
		sql.append(" '"+cartItem.getBookId() + "', ");
		sql.append(" '"+cartItem.getQuantity() + "' ");
		sql.append(")");
		int insert= _jdbcTemplate.update(sql.toString());
		if (insert>0) return 1;
		else return 0;
	}
	public int AddBillDetail(int billID, HashMap<Integer, CartItems> cart) {
		int check =1;
		if (cart.size()==0) return 0;
		for (Map.Entry<Integer, CartItems> entry : cart.entrySet()) {
		    Integer key = entry.getKey();
		    CartItems value = entry.getValue();
		    
		    check = check+(1-AddBillDetail(billID,value));
		    
		}
		return check;
	}
}
