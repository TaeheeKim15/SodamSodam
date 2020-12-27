package bitcamp.sodam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PayController {
	@GetMapping("/pay")
	public String Pay() {
		return "pay";
	}
}
