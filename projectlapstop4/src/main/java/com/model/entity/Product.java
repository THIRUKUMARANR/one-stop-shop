package com.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	private int productid;
	private String productname;
	private String image;
	private String price;
	private int productquantity;
	private String productdescription;
	private String categoryname;
	public Product(){}
	public Product(int productid, String productname,String image,String price, int productquantity, String productdescription) {
		super();
		this.productid = productid;
		this.productname = productname;
		this.image = image;
		this.price = price;
		this.productquantity = productquantity;
		this.productdescription = productdescription;
	}
	@Transient
    private MultipartFile file;
    
  
    
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	

	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getprice() {
		return price;
	}
	public void setprice(String price) {
		this.price = price;
	}
	public int getProductquantity() {
		return productquantity;
	}
	public void setProductquantity(int productquantity) {
		this.productquantity = productquantity;
	}
	public String getProductdescription() {
		return productdescription;
	}
	public void setProductdescription(String productdescription) {
		this.productdescription = productdescription;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	

}
