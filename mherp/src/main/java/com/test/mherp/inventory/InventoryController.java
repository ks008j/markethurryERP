package com.test.mherp.inventory;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class InventoryController {

	@Autowired
	private IService service;
	
	// 재고실사 메뉴
	@RequestMapping(value = "/inventory/enrollinventory.action", method = { RequestMethod.GET })
	public String enrollinventory(HttpServletRequest req, HttpServletResponse resp) {
		
		int productTotalCnt = service.getTotalProductCnt();
		List<InventoryDTO> recentList = service.getRecentList();
		
		req.setAttribute("recentList", recentList);
		req.setAttribute("productTotalCnt", productTotalCnt);
		
		return "inventory.enrollinventory";
	}

	@RequestMapping(value = "/inventory/enrollinventoryok.action", method = { RequestMethod.POST })
	public void enrollinventoryok(HttpServletRequest req, HttpServletResponse resp, InventoryDTO dto) {

		HttpSession session = req.getSession();
		session.setAttribute("eseq", "1");
		
		dto.setEmployeeseq((String) session.getAttribute("eseq"));
		int result = service.enrollInventory(dto);
		
		try {
			resp.setCharacterEncoding("UTF-8");
			PrintWriter writer = resp.getWriter();
			writer.print("<html>");
			writer.print("<head><meta charset='UTF-8'></head>");
			writer.print("<body>");
			writer.print("<script>alert('재고조정이 완료되었습니다.'); location.href='/mherp/inventory/enrollinventory.action';</script>");
			writer.print("</body>");
			writer.print("</html>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		

	}

	@RequestMapping(value = "/inventory/getPinfo.action", method = { RequestMethod.POST })
	public void getPinfo(HttpServletRequest req, HttpServletResponse resp, String productseq) {

		Map<String, String> productInfo = service.getPinfo(productseq);
		ObjectMapper mapper = new ObjectMapper();

		try {
			resp.setCharacterEncoding("UTF-8");
			resp.setContentType("application/json");
			String productInfoJSON = mapper.writeValueAsString(productInfo);
			PrintWriter writer = resp.getWriter();
			
			writer.print(productInfoJSON);
			writer.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
	// 재고조정 내역관리
	@RequestMapping(value = "/inventory/edithistory.action", method = { RequestMethod.GET })
	public String name(HttpServletRequest req, HttpServletResponse resp, String page) {
		
		String pagebar = service.getTotalInventoryCnt();
		
//		List<InventoryDTO> list = service.getInventoryInfo(page);
		List<InventoryDTO> list = new ArrayList<InventoryDTO>();
		
		req.setAttribute("pagebar", pagebar);
		req.setAttribute("list", list);
		
		return "inventory.edithistory";
	}
}
