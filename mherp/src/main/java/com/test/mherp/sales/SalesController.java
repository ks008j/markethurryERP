package com.test.mherp.sales;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SalesController {
	
	//주소
	// http://localhost:8090/mherp/sales/template.action
	
	@Autowired
	private ISales sales;
	
	@RequestMapping(value = "/sales/term.action", method = { RequestMethod.GET })
	public String term(HttpServletRequest req, HttpServletResponse resp) {
		
		List<TermDTO> list = sales.term();
		
		req.setAttribute("list", list);
		
		return "sales.term";
		
	}
	
	@RequestMapping(value = "/sales/category.action", method = { RequestMethod.GET })
	public String category(HttpServletRequest req, HttpServletResponse resp) {

		return "sales.category";
		
	}
	
	@RequestMapping(value = "/sales/product.action", method = { RequestMethod.GET })
	public String product(HttpServletRequest req, HttpServletResponse resp) {
		
		return "sales.product";
		
	}
	
}