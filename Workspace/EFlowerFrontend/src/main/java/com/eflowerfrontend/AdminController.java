package com.eflowerfrontend;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.eflower.EFlower.Dao.ProductDao;
import com.eflower.EFlower.Dao.SupplierDao;
import com.eflower.EFlower.Model.Product;
import com.eflower.EFlower.Model.Supplier;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	SupplierDao supplierDao;
	@Autowired
	Supplier supplier;
	@Autowired
	ProductDao productDao;
	@Autowired
	Product product;
	@Autowired
	HttpServletRequest request;

	@RequestMapping("/supplier")
	public ModelAndView viewSupplier() {
		ModelAndView view = new ModelAndView("Supplier");

		List<Supplier> list = supplierDao.getAll();
		view.addObject("Supplier", supplier);

		view.addObject("supplierList", list);

		return view;
	}

	@RequestMapping(value = "/addSupplier", method = RequestMethod.POST)
	public String add(@ModelAttribute("Supplier") Supplier supplier) {
		System.out.println("print controller");
		if(supplier.getSupplierId()==0){
		supplierDao.insertSupplier(supplier);
		return "redirect:loginAdmin";

		}
		else{
			supplierDao.updateSupplier(supplier);
			return "redirect:loginAdmin";

		}
		
	}

	@RequestMapping("/editSupplier/{Id}")
	public ModelAndView getByIdSupplier(@PathVariable("Id") int Id) {
		ModelAndView view = new ModelAndView("Supplier");
		Supplier s = supplierDao.getById(Id);
		

		List<Supplier> list = supplierDao.getAll();
   System.out.println("Check");
		view.addObject("Supplier", s);//Binding the existing object to the spring form..
		view.addObject("supplierList", list);
		return view;
	}

	@RequestMapping("/deleteSupplier/{Id}")
	public String deleteSupplier(@PathVariable("id") int sId) {
		Supplier supplier = supplierDao.getById(sId);
		supplierDao.deleteSupplier(supplier);
		return "redirect:/admin/supplier";
	}

	@RequestMapping("/loginAdmin")
	public ModelAndView view6() {
		ModelAndView view = new ModelAndView("Admin");
		List<Product> list = productDao.getAll();
		view.addObject("product", product);
		view.addObject("prdList", list);
		return view;
	}

	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id) {
		Product product = productDao.getById(id);
		productDao.deleteProduct(product);
		return "redirect:/admin/loginAdmin";
	}

	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)

	public String ProductSubmit(@ModelAttribute("product") Product product, @RequestParam("file") MultipartFile file,

			ModelMap mv) {

		if (product.getProductId() == 0) {

			if (!file.isEmpty()) {

				try {

					// Creating the directory to store file

					String rootPath = request.getServletContext().getRealPath("/resources/images/product/");

					File dir = new File(rootPath);

					if (!dir.exists())

						dir.mkdirs();

					String upload = rootPath + file.getOriginalFilename();

					System.out.println("Uploaded " + upload);

					System.out.println("Uploaded" + rootPath);

					File destination = new File(upload);

					file.transferTo(destination);

					// Create the file on server

					product.setProduct_image(file.getOriginalFilename());

					// product.setProduct_image(file.getOriginalFilename());

					productDao.insertProduct(product);

					// p.getAll();

				} catch (Exception e) {
				}

			}

			return "redirect:loginAdmin";

		}

		else

		{

			if (!file.isEmpty()) {

				try {

					// Creating the directory to store file

					String rootPath = request.getServletContext().getRealPath("/resources/images/product/");

					File dir = new File(rootPath);

					if (!dir.exists())

						dir.mkdirs();

					String upload = rootPath + file.getOriginalFilename();

					System.out.println("Uploaded " + upload);

					System.out.println("Uploaded" + rootPath);

					File destination = new File(upload);

					file.transferTo(destination);

					// Create the file on server

					product.setProduct_image(file.getOriginalFilename());

					productDao.updateProduct(product);

					// p.getAll();

				} catch (Exception e) {
				}

			}

			System.out.println("updated successfulluy");

			return "redirect: loginAdmin";

		}

	}

	@RequestMapping("/edit/{id}")
	public ModelAndView getById(@PathVariable("id") int id) {

		Product p = productDao.getById(id);
		ModelAndView view = new ModelAndView("Admin");
		List<Product> list = productDao.getAll();
		view.addObject("product", p);
		view.addObject("prdList", list);
		return view;
	}
	// private static final String UPLOAD_FILE
}
