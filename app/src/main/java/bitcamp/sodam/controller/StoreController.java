package bitcamp.sodam.controller;

import java.util.ArrayList;
import java.util.List;

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
import bitcamp.sodam.beans.Store;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.service.CategoryService;
import bitcamp.sodam.service.StoreService;
import bitcamp.sodam.service.UploadStoreService;

@Controller
@RequestMapping("/store")
public class StoreController {

	@Autowired
	StoreService storeService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	UploadStoreService uploadStoreService;

    @GetMapping("list")
    public String StoreList(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) {
        System.out.println("가게목록");

        response.setContentType("text/html;charset=UTF-8");

        response.setCharacterEncoding("UTF-8"); // 응답의 encoding을 utf-8로 변경
       
        
        List<Store> store_list = new ArrayList();
        List<Store> list;
        try {
            list = storeService.list();
            for(Store store : list) {
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
    
    @GetMapping("form")
    public String insertStore(Model model) throws Exception {
        System.out.println("가게등록폼");
        List<Category> list = categoryService.list();
        model.addAttribute("list",list);
        return "store/form";
    }

    @PostMapping("add")
    public String addStore(Store store, HttpSession session) throws Exception {
        System.out.println("가게등록");
        
        
        User user = new User();
        user = (User) session.getAttribute("loginUser");
        
        store.setUno(user.getUno());
        store.setOwner(user);
        
        uploadStoreService.addStoreInfo(store);
        
        String insertId = categoryService.getInsertId();
        
        List<String> category_list = store.getCategoryName();
        
        for (String category : category_list) {
        	categoryService.addCategoryStore(category, insertId);	
        }
        
        //storeService.insertStore(store);
        
        return "redirect:/store/list";
    }
    
    @GetMapping("delete")
    public String deleteStore(int sno, HttpSession session) throws Exception {
        System.out.println("가게삭제");
      if (storeService.deleteStore(sno) == 0) {
        throw new Exception("해당하는 가게가 존재하지 않습니다.");
      }
        return "redirect:.";
    }
    
	@GetMapping("detail")
	public String StoreDetail(HttpServletResponse response, Model model) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
        
		List<Store> list = storeService.list();
		List<Category> clist = categoryService.list();
		
		model.addAttribute("list", list);
		model.addAttribute("clist", clist);
		return "store/detail";
	}
}
