package com.test.mherp.inouthistory;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class inoutController {

	@Autowired
	private IinoutDAO dao;

	@RequestMapping(value = "/inouthistory/inouthome.action", method = { RequestMethod.GET })
	public String inouthome(HttpServletRequest req, HttpServletResponse resp) {

		// select 작업
		List<inoutDTO> inoutlist = dao.inoutlist();

		req.setAttribute("inoutlist", inoutlist);

		return "inouthistory.inouthome";
	}

	/*
	 * @RequestMapping(value = "/select.action", method = { RequestMethod.GET })
	 * public String select(HttpServletRequest req, HttpServletResponse resp) {
	 * 
	 * 
	 * 
	 * return "select"; }
	 */

	@RequestMapping(value = "/inouthistory/add.action", method = { RequestMethod.GET })
	public String add(HttpServletRequest req, HttpServletResponse resp) {

		return "inouthistory.add";
	}

	@RequestMapping(value = "/inouthistory/addok.action", method = { RequestMethod.GET })
	public void addok(HttpServletRequest req, HttpServletResponse resp, inoutDTO dto) {

		int result = dao.add(dto);
		
		complete(result, resp, "inouthistory/list.action");

	}

	private void complete(int result, HttpServletResponse resp, String url) {
		
		try {
			resp.setCharacterEncoding("UTF-8");
			
			PrintWriter writer = resp.getWriter();
			
			writer.print("<html>");
			writer.print("<head>");
			writer.print("<meta charset='UTF-8'>");
			writer.print("</head>");
			writer.print("<body>");
			writer.print("<script>");
	
			if (result == 1) {
				writer.printf("location.href='/mherp/inouthistory/%s';", url);
			} else if (result == 0){
				writer.print("alert('실패'); history.back();");
			}			
			
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			
			writer.close();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
		}
		
	}

	@RequestMapping(value = "/inouthistory/edit.action", method = { RequestMethod.GET })
	public String edit(HttpServletRequest req, HttpServletResponse resp, String seq) {

		inoutDTO dto = dao.get(seq);
		
		List<inoutDTO> clist = dao.clist();
		
		req.setAttribute("dto", dto);
		req.setAttribute("clist", clist);

		return "inouthistory/edit";
	}
	
	@RequestMapping(value = "/inouthistory/editok.action", method = { RequestMethod.GET })
	public String editok(HttpServletRequest req, HttpServletResponse resp, inoutDTO dto) {

		int result = dao.edit(dto);
		
		complete(result, resp, "inouthistory.inouthome.action?seq=" + dto.getSeq());
		

		return "inouthistory/editok";
	}
	
	@RequestMapping(value = "/inouthistory/delete.action", method = { RequestMethod.GET })
	public String delete(HttpServletRequest req, HttpServletResponse resp, String seq) {
		
		inoutDTO dto = dao.get(seq);
		
		int result = dao.delete(seq);
		
		complete(result, resp, "inouthistory/inouthome.action");

		return "inouthistory/delete";
	}
}
