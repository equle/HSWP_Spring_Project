package kr.co.controller;



import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hswp.habo.dto.UserDTO;
import com.hswp.habo.service.UserService;




@Controller

@RequestMapping("/*")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Inject
	UserService service;
	
	// 회원가입 get
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String getJoin() throws Exception {
		logger.info("get join");
		return "user/join";
	}
	
	// 회원가입 post
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String postJoin(UserDTO dto) throws Exception {
		logger.info("post join");
		
		service.join(dto);
		
		return "redirect:/";
	}
	
	// 아이디 중복 확인
	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public String idCheck(String id) throws Exception {
		logger.info("idCheck");
		
		String ck = service.idCheck(id);
		System.out.println(ck);
		if(ck == null) {
			return "0";
		}else {
			return "1";
		}
	}
	
	// 로그인 get
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLogin() throws Exception {
		logger.info("get login");
		return "user/login";
	}
	
	// 로그인 post
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String postLogin(UserDTO dto, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post login");
		
		UserDTO login = service.login(dto);
		System.out.println(login.getDomain());
		System.out.println(login.getId());
		System.out.println(login.getName());
		HttpSession session = req.getSession();
		
		if(login == null) {
			session.setAttribute("loginDTO", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("loginDTO", login);
		}
		
		return "redirect:/";
	}
	
	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
}
