package BookStore.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Dao.CartItemsDao;
import BookStore.Entity.CartItems;

@Service
public class CartItemsServiceImpl implements ICartItemsService{
	@Autowired
	CartItemsDao cartItemsDao;

	@Override
	public List<CartItems> GetDataCartItems() {
		
		return cartItemsDao.GetDataCartItems();
	}

}

