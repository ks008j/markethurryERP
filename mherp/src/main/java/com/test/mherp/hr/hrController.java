package com.test.mherp.hr;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class hrController {

	@Controller
	public class InventoryController {
		
		@RequestMapping(value = "/inventory/home.action", method = { RequestMethod.GET })
		public String home(HttpServletRequest req, HttpServletResponse resp) {

			return "inventory.home";
		}
	}
}
