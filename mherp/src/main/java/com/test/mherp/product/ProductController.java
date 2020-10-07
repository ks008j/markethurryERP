package com.test.mherp.product;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProductController {

	@Autowired
	IProductService service;
	
	//상품조회 전
	
	//상품 전체
	@RequestMapping(value = "/product/search.action", method = { RequestMethod.GET })
	public String search(HttpServletRequest req, HttpServletResponse resp) {
		
		
		List<ProductDTO> list = service.list();
		
		req.setAttribute("list", list);

		return "product.search";
	}
	
	
//	//상품조회 후
//	@ResponseBody
//	@RequestMapping(value = "/product/searchok.action", method = { RequestMethod.GET })
//	public void searchok(HttpServletRequest req, HttpServletResponse resp) {
//		
//		String search = req.getParameter("search");
//		
//		
//		int result = service.search();
//		
//		complete(result, resp, "search.action?search=" + search);
//		
//	}
	
	private void complete(int result, HttpServletResponse response, String url) {
		
		try {
			response.setCharacterEncoding("UTF-8");
			PrintWriter writer = response.getWriter();
			
			writer.print("<html>");
			writer.print("<head>");
			writer.print("<meta charset='UTF-8'>");
			writer.print("</head>");
			writer.print("<body>");
			writer.print("<script>");
			
			if (result == 1) {
				writer.printf("location.href='/mherp/product/%s';", url);
			} else if (result == 0) {
				writer.print("alert('실패'); history.back();");
			}
			
			
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			
			writer.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}
	
	
	//상품등록
	@RequestMapping(value = "/product/add.action", method = { RequestMethod.GET })
	public String add(HttpServletRequest req, HttpServletResponse resp) {

		
		return "product.add";
	}
//	
//	
	//상품등록 후
	@RequestMapping(value = "/product/addok.action", method = { RequestMethod.POST })
	public void addok(HttpServletRequest req, HttpServletResponse resp, ProductDTO dto) {

		
		int result = service.add(dto);
		
		complete(result, resp, "search.action");
		
	}
//	
//	
	//상품수정&삭제 전
	@RequestMapping(value = "/product/edit.action", method = { RequestMethod.GET })
	public String edit(HttpServletRequest req, HttpServletResponse resp, String seq) {
		
		ProductDTO dto = service.get(seq); //해당 상품
		
		//List<ProductDTO> list = service.list();
		
		req.setAttribute("dto", dto);
		//req.setAttribute("list", list);
		
		
		return "product.edit";
	}
//	
//	
//	//상품수정&삭제 후
//	@RequestMapping(value = "/product/editok.action", method = { RequestMethod.GET })
//	public void editok(HttpServletRequest req, HttpServletResponse resp) {
//
//
//	}
//	
//	
//	//상품 대분류 관리
//	@RequestMapping(value = "/product/category.action", method = { RequestMethod.GET })
//	public String category(HttpServletRequest req, HttpServletResponse resp) {
//
//		
//
//		return "product.category";
//	}
	
}
