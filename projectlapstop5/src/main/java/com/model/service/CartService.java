package com.model.service;

import java.util.List;

import com.model.entity.Cartitems;



public interface CartService {
 public void add(Cartitems cart);

public List getAllCartitems();


}