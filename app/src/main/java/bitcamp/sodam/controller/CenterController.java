package bitcamp.sodam.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import bitcamp.sodam.beans.Notice;
import bitcamp.sodam.service.FAQService;
import bitcamp.sodam.service.InquiryService;

@Controller
public class CenterController {
	
	@Autowired
    FAQService faqService;
	
	@Autowired
	InquiryService InquiryService;

    @GetMapping("/center")
    public String Home(){
        System.out.println("고객센터");
        return "serviceCenter/main";
    }
    
    @GetMapping("/inquiry")
    public String Inquiry(){
        System.out.println("1대1문의");
        return "serviceCenter/inquiry";
    }
    
    @PostMapping("/inquiry_add")
	@Async
	public String AdminNoticeAdd(HttpServletResponse response, Model model, bitcamp.sodam.beans.Inquiry inquiry) {
		System.out.println("어드민 공지사항 등록");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경
		
		try {
			InquiryService.add(inquiry);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "admin/notice";
	}
}
