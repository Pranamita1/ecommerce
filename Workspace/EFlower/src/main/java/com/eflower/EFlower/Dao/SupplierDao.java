package com.eflower.EFlower.Dao;

import java.util.List;

import com.eflower.EFlower.Model.Supplier;

public interface SupplierDao {

	boolean insertSupplier(Supplier supplier);
	boolean deleteSupplier(Supplier supplier);
	boolean updateSupplier(Supplier supplier);
	List<Supplier> getAll();
	Supplier getById(int Id); 
}
