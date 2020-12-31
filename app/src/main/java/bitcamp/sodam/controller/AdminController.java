package bitcamp.sodam.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Coupon;
import bitcamp.sodam.beans.Inquiry;
import bitcamp.sodam.beans.Notice;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.service.CategoryService;
import bitcamp.sodam.service.CouponService;
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
	CouponService couponService;

	@Autowired
	private UploadTestService uploadTestService;
	
	@GetMapping("/login")
	public String AdminLogin(HttpServletResponse response, Model model) {
		System.out.println("어드민 로그인");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		return "admin/login";
	}
	
	@PostMapping("/loginPost")
	public String AdminLoginPost(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		PrintWriter out;
		User user;
		
		response.setContentType("text/html; charset=UTF-8");
		
		try {
			out = response.getWriter();
			user = userService.get(email, pwd);
			if (user == null) {
				out.println("<script>alert('존재하지 않는 사용자입니다.');</script>");
				System.out.println("없음");
			} else {
				System.out.println("있음");
				String[] remember = request.getParameterValues("rememberMe");
				if(remember != null) {
					Cookie cookie = new Cookie("rememberAccount", email) ;
					cookie.setMaxAge(365*24*60*60);                                 // 쿠키의 유효기간을 365일로 설정한다.
					cookie.setPath("/");
					response.addCookie(cookie);   
				} else {
					Cookie cookie = new Cookie("rememberAccount", null) ;
					cookie.setMaxAge(0) ;
					cookie.setPath("/");
				    response.addCookie(cookie) ;
				}
				
				System.out.println("Login Success");
				
				session.setAttribute("loginUser", user);
				
				return "redirect:/admin/category";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/admin/login";
	}

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
	@Async
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
	@Async
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
		System.out.println("어드민 문의사항 답변 작성 페이지");

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
	@Async
	public String AdminInquiryAdd(HttpServletRequest request, HttpServletResponse response, Model model, Inquiry inquiry) {
		System.out.println("어드민 문의사항 답변");

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
	
	@GetMapping("/coupon")
	public String AdminCoupon(HttpServletResponse response, Model model) {
		System.out.println("어드민 쿠폰");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		List<Coupon> list;
		try {
			list = couponService.list();
			model.addAttribute("list", list);
		} catch (Exception e) {
			model.addAttribute("list", null);
			e.printStackTrace();
		}

		return "admin/coupon";
	}
	
	@PostMapping("/coupon_delete")
	@Async
	public void AdminCouponDelete(HttpServletResponse response, Model model, String mcuno) {
		System.out.println("어드민 공지사항 등록");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		try {
			couponService.delete(Integer.parseInt(mcuno));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@GetMapping("/coupon_list")
	public String AdminCouponList(HttpServletResponse response, Model model) {
		System.out.println("어드민 사용자 쿠폰 목록");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		List<Coupon> list;
		List<User> userList;
		try {
			list = couponService.itemList();
			userList = userService.list();
			model.addAttribute("list", list);
			model.addAttribute("userList", userList);
		} catch (Exception e) {
			model.addAttribute("list", null);
			model.addAttribute("userList", null);
			e.printStackTrace();
		}

		return "admin/coupon_list";
	}
	
	@PostMapping("/mycoupon_add")
	@Async
	public void AdminMyCouponAdd(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("어드민 유저 쿠폰 추가");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		try {
			couponService.add(Integer.parseInt(request.getParameter("cuno")),Integer.parseInt(request.getParameter("uno")));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@PostMapping("/coupon_add")
	@Async
	public String AdminCouponAdd(HttpServletRequest request, HttpServletResponse response, Model model, Coupon coupon) {
		System.out.println("어드민 쿠폰 추가");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		try {
			couponService.addItem(coupon);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/admin/coupon_list";
	}
	
	@PostMapping("/coupon_edit")
	@Async
	public String AdminCouponEdit(HttpServletRequest request, HttpServletResponse response, Model model, Coupon coupon) {
		System.out.println("어드민 쿠폰 수정");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		try {
			couponService.update(coupon);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "admin/notice";
	}
	
	
}
