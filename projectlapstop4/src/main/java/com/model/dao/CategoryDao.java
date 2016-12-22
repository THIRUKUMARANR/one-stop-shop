package com.model.dao;

import java.util.List;

import com.model.entity.Category;




public interface CategoryDao {
	public void add(Category category);
	public void edit(Category category);
	public void delete(int categoryId);
	public Category getCategory(int categoryId);
	public List getAllCategory();
	

}
