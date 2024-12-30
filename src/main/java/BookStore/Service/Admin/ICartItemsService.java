package BookStore.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import BookStore.Entity.CartItems;

@Service
public interface ICartItemsService {
	public List<CartItems> GetDataCartItems();
}
