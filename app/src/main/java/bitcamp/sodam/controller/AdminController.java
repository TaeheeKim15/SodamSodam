package bitcamp.sodam.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Inquiry;
import bitcamp.sodam.beans.Notice;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.service.CategoryService;
import bitcamp.sodam.service.InquiryService;
import bitcamp.sodam.service.NoticeService;
import bitcamp.sodam.service.UploadTestService;
import bitcamp.sodam.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	CategoryService categoryService;

	@Autowired
	UserService userService;

	@Autowired
	NoticeService noticeService;

	@Autowired
	InquiryService inquiryService;

	@Autowired
	private UploadTestService uploadTestService;

	@GetMapping("/category")
	public String AdminCategory(HttpServletResponse response, Model model) {
		System.out.println("어드민 카테고리");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		List<Category> list;
		try {
			list = categoryService.list();
			model.addAttribute("list", list);
		} catch (Exception e) {
			model.addAttribute("list", null);
			e.printStackTrace();
		}

		return "admin/category";
	}

	@PostMapping("/categoryAdd")
	public void CategoryAdd(HttpServletRequest request) {
		System.out.println("어드민 카테고리 추가");
		try {
			categoryService.add(request.getParameter("name"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@PostMapping("/categoryDelete")
	public void CategoryDelete(HttpServletRequest request) {
		System.out.println("어드민 카테고리 삭제");
		try {
			categoryService.delete(Integer.parseInt(request.getParameter("no")));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@PostMapping("/categoryUpdate")
	public void CategoryUpdate(HttpServletRequest request) {
		System.out.println("어드민 카테고리 수정");
		Category category = new Category();
		category.setCtno(Integer.parseInt(request.getParameter("id")));
		category.setCtname(request.getParameter("name"));
		try {
			categoryService.update(category);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@GetMapping("/user")
	public String AdminUser(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("어드민 사용자");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		List<User> list;
		try {
			list = userService.list();
			model.addAttribute("list", list);
		} catch (Exception e) {
			model.addAttribute("list", null);
			e.printStackTrace();
		}

		return "admin/user";
	}

	@PostMapping("/user_add")
	public String AdminUserAdd(User user, HttpServletRequest request) throws Exception {
		uploadTestService.addUserInfo(user);

		return "redirect:/admin/user";
	}

	@PostMapping("/user_edit")
	@Async
	public String AdminUserEdit(User user, HttpServletRequest request) throws Exception {

		uploadTestService.editUserInfo(user);

		return "redirect:/admin/user";
	}

	@PostMapping("/user_delete")
	@Async
	public String AdminUserDelete(User user, HttpServletRequest request) throws Exception {
		System.out.println("어드민 카테고리 삭제");
		try {
			userService.delete(Integer.parseInt(request.getParameter("no")));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/admin/user";
	}

	@GetMapping("/notice")
	public String AdminNotice(HttpServletResponse response, Model model) {
		System.out.println("어드민 공지사항");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		List<Notice> list;
		try {
			list = noticeService.list();
			model.addAttribute("list", list);
		} catch (Exception e) {
			model.addAttribute("list", null);
			e.printStackTrace();
		}

		return "admin/notice";
	}

	@GetMapping("/notice_write")
	public String AdminNoticeWrite(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("어드민 공지사항");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		String nno = request.getParameter("nno");

		if (nno != null) {
			Notice notice;
			try {
				notice = noticeService.get(Integer.parseInt(nno));
				model.addAttribute("post", notice);
			} catch (Exception e) {
				model.addAttribute("post", null);
				e.printStackTrace();
			}
		}

		return "/admin/notice_write";
	}

	@PostMapping("/notice_edit")
	public String AdminNoticeEdit(HttpServletRequest request, HttpServletResponse response, Model model,
			Notice notice) {
		System.out.println("어드민 공지사항 수정");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		try {
			noticeService.update(notice);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "admin/notice";
	}

	@PostMapping("/notice_add")
	public String AdminNoticeAdd(HttpServletResponse response, Model model, Notice notice) {
		System.out.println("어드민 공지사항 등록");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		try {
			noticeService.add(notice);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "admin/notice";
	}

	@PostMapping("/notice_delete")
	public void AdminNoticeDelete(HttpServletResponse response, Model model, String nno) {
		System.out.println("어드민 공지사항 등록");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		try {
			noticeService.delete(nno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@GetMapping("/inquiry")
	public String AdminInquiry(HttpServletResponse response, Model model) {
		System.out.println("어드민 문의사항");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		List<Inquiry> list;
		try {
			list = inquiryService.list();
			model.addAttribute("list", list);
		} catch (Exception e) {
			model.addAttribute("list", null);
			e.printStackTrace();
		}

		return "admin/inquiry";
	}

	@GetMapping("/inquiry_write")
	public String AdminInquiryWrite(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("어드민 문의사항 답변");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		String qno = request.getParameter("qno");

		Inquiry inquiry;
		try {
			inquiry = inquiryService.get(Integer.parseInt(qno));
			model.addAttribute("post", inquiry);
		} catch (Exception e) {
			model.addAttribute("post", null);
			e.printStackTrace();
		}

		return "/admin/inquiry_detail";
	}
	
	@PostMapping("/inquiry_add")
	public String AdminInquiryAdd(HttpServletRequest request, HttpServletResponse response, Model model, Inquiry inquiry) {
		System.out.println("어드민 공지사항 등록");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경
		
		inquiry.setQstatus(1);
		inquiry.setQno(Integer.parseInt(request.getParameter("qno")));

		try {
			inquiryService.update(inquiry);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "admin/inquiry";
	}
}
