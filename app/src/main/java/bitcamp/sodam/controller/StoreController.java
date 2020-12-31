package bitcamp.sodam.controller;

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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Product;
import bitcamp.sodam.beans.Store;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.service.CategoryService;
import bitcamp.sodam.service.ProductService;
import bitcamp.sodam.service.StoreService;
import bitcamp.sodam.service.UploadStoreService;
import bitcamp.sodam.service.UserService;

@Controller
@RequestMapping("/store")
public class StoreController {

	@Autowired
	StoreService storeService;

	@Autowired
	ProductService productService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	UploadStoreService uploadStoreService;

	@Autowired
	UserService userService;

	@GetMapping("list")
	public String StoreList(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model)
			throws Exception {
		System.out.println("가게목록");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		List<Store> store_list = new ArrayList();
		List<Store> list;
		try {
			list = storeService.list();
			for (Store store : list) {
				List<Category> category = categoryService.list(store.getSno());
				store.setCategory(category);
				store_list.add(store);
			}
			model.addAttribute("list", store_list);
		} catch (Exception e) {
			model.addAttribute("list", null);
			e.printStackTrace();
		}

		return "store/storeList";
	}
<<<<<<< HEAD
	
	@GetMapping("review")
	public String StoreReview(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model)
			throws Exception {
		System.out.println("가게목록");

		response.setContentType("text/html;charset=UTF-8");

		response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경

		List<Store> store_list = new ArrayList();
		List<Store> list;
		try {
			list = storeService.list();
			for (Store store : list) {
				List<Category> category = categoryService.list(store.getSno());
				store.setCategory(category);
				store_list.add(store);
			}
			model.addAttribute("list", store_list);
		} catch (Exception e) {
			model.addAttribute("list", null);
			e.printStackTrace();
		}

		return "store/storeList";
	}
=======
>>>>>>> b0f1258aedcbec9b917c3f7ab44ce107cea98c95

	@GetMapping("form")
	public String insertStore(Model model) throws Exception {
		System.out.println("가게등록폼");
		List<Category> list = categoryService.list();
		model.addAttribute("list", list);
		return "store/form";
	}

	@PostMapping("add")
	public String addStore(Store store, HttpSession session) throws Exception {
		System.out.println("가게등록");

		User user = new User();
		user = (User) session.getAttribute("loginUser");
<<<<<<< HEAD
		int unoCount = storeService.storeLimit(user.getUno());
		
		if (unoCount == 0) {
			store.setUno(user.getUno());
			store.setOwner(user);
			
			uploadStoreService.addStoreInfo(store);
			
			String insertId = categoryService.getInsertId();
			
			List<String> category_list = store.getCategoryName();
			
			for (String category : category_list) {
				categoryService.addCategoryStore(category, insertId);
			}
		} else {
			throw new Exception("등록된 가게가 이미 존재합니다.");
		}
		// storeService.insertStore(store);
		return "redirect:/store/list";
	}
	
	@GetMapping("delete_form")
	public String deleteForm(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		System.out.println("가게삭제폼");
		
	    User user = (User) session.getAttribute("loginUser");
	    int uno = user.getUno();
	    String pwd = request.getParameter("pwd");
		PrintWriter out;
		
		response.setContentType("text/html; charset=UTF-8");
		
		try {
			out = response.getWriter();
			
			if (user.getUno() != uno) {
				out.println("<script>alert('존재하지 않는 사용자입니다.');</script>");
			} if (user.getPwd() != pwd) {
				out.println("<script>alert('비밀번호가 일치하지 않습니다.');</script>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		User userInfo = storeService.getUnoPwd(uno, pwd);
		model.addAttribute("userInfo", userInfo);
		return "store/delete";
	}
=======

		store.setUno(user.getUno());
		store.setOwner(user);

		uploadStoreService.addStoreInfo(store);

		String insertId = categoryService.getInsertId();

		List<String> category_list = store.getCategoryName();

		for (String category : category_list) {
			categoryService.addCategoryStore(category, insertId);
		}

		// storeService.insertStore(store);

		return "redirect:/store/list";
	}
>>>>>>> b0f1258aedcbec9b917c3f7ab44ce107cea98c95

	@GetMapping("delete")
	public String deleteStore(HttpServletRequest request, HttpSession session) throws Exception {
		System.out.println("가게삭제");

		int sno = Integer.parseInt(request.getParameter("sno"));

		productService.deleteStoreProduct(sno);
		storeService.deleteCategory(sno);
		storeService.deleteStore(sno);

		return "redirect:/store/list";
	}

	@GetMapping("detail")
<<<<<<< HEAD
	public void StoreDetail(int sno, Model model) throws Exception {
		Store store = storeService.get(sno);

			if (store == null) {
				throw new Exception("해당 가게가 존재하지 않습니다.");
			}
			model.addAttribute("store", store);
	}

//	@GetMapping("{no}")
//	public String detail(@PathVariable int no, Model model) throws Exception {
//		Store store = storeService.get(no);
//		if (store == null) {
//			throw new Exception("해당 가게가 존재하지 않습니다.");
//		}
//		model.addAttribute("store", store);
//		return "store/detail";
//	}

=======
	public String StoreDetail(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {

		int sno = Integer.parseInt(request.getParameter("sno"));
		
		List<Product> product = productService.listStoreProduct(sno);
		Store store = storeService.get(sno);
		
		model.addAttribute("product", product);
		model.addAttribute("store", store);
		
		return "store/detail";
	}

	@GetMapping("{no}")
	public String detail(@PathVariable int no, Model model) throws Exception {
		Store store = storeService.get(no);
		if (store == null) {
			throw new Exception("해당 가게가 존재하지 않습니다.");
		}
		model.addAttribute("store", store);
		return "store/detail";
	}

<<<<<<< HEAD
	@GetMapping("update")
	public String StoreUpdate(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
=======
>>>>>>> b0f1258aedcbec9b917c3f7ab44ce107cea98c95
	@PostMapping("update")
	public String StoreDetail(HttpServletResponse response, Model model, Store store) throws Exception {
>>>>>>> a4bba7c72824d18704cb5b6ca76e36470a49b6ff

		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String sno = request.getParameter("sno");

		Store store = storeService.get(Integer.parseInt(sno));
		List<Category> my_clist = categoryService.list(Integer.parseInt(sno));
		List<Category> clist = categoryService.list();

		model.addAttribute("store", store);
		model.addAttribute("my_clist", my_clist);
		model.addAttribute("clist", clist);

		/* int count = storeService.updateStore(store); */
		return "store/update";
	}
}
