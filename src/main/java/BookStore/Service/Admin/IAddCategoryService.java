package BookStore.Service.Admin;

import org.springframework.stereotype.Service;

import BookStore.Entity.Categorys;

@Service
public interface IAddCategoryService {
	public int AddCategory(Categorys category);
	public int DeleteCategory(int id);
	public Categorys GetCategorybyId(int id);
	public int EditCategory(Categorys category);
	
}
