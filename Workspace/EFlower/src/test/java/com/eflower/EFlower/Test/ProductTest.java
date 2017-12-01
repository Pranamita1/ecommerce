package com.eflower.EFlower.Test;


import java.util.List;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.eflower.EFlower.Dao.ProductDao;
import com.eflower.EFlower.Model.Product;

public class ProductTest {
	@Autowired
	static AnnotationConfigApplicationContext context;
	@Autowired
	static Product product;
	@Autowired
	static ProductDao productDao;
	@BeforeClass
	public static void init(){
		context=new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		
		product=(Product)context.getBean("product");
		productDao=(ProductDao)context.getBean("productDao");
	}
	
	
	@Test
	public void test(){
		 
		product.setProductName("abcgu");
		product.setProductPrice("10");
		List<Product> list = productDao.getAll();
		System.out.println(list.size());
 		Assert.assertEquals(true,productDao.insertProduct(product));
		}
	
/*public void test(){
	
	List<Product> String 
	
}*/
}
