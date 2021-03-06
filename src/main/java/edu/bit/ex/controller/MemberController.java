package edu.bit.ex.controller;

import edu.bit.ex.config.auth.PrincipalDetailsService;
import edu.bit.ex.controller.validator.MemberValidator;
import edu.bit.ex.oauth2.MemberDetails;
import edu.bit.ex.service.member.MemberService;
import edu.bit.ex.vo.MemberVO;
import edu.bit.ex.vo.account.MemberContext;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;


import java.security.Principal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Slf4j
@AllArgsConstructor
@Controller
public class MemberController {
	private final MemberService memberService;
	private final MemberValidator memberValidator;

	// 회원정보수정 페이지 이동
	@GetMapping("/user/edit")
	public String getEditForm(Model model,Principal principal) {
		String userId = principal.getName();
		System.out.println("유저 아이디: " + principal.getName());

		MemberVO memberVO = new MemberVO();
		log.info("수정페이지이동", memberVO);
		model.addAttribute("memberVO", memberVO);
		return "/user/edit";
	}
	
	  // 회원정보수정 post
	   @PostMapping("/updateUser")
	   public String updateUser(HttpServletRequest request ,HttpServletResponse response ,MemberVO memberVO,  Model model) throws Exception {
	      log.info("post userUpdate");
	      log.info("memberVO" + memberVO);

	      if (memberVO != null) {   
	         
	         memberService.updateUser(memberVO);
	         log.info("성공");
	         return "redirect:/loginForm";         
	      }else {
	    	  log.info("실패");
	    	  return "/user/edit";      
	      }
	      
	   }
	   
	// 탈퇴 페이지 이동
		@GetMapping("/user/delete")
		public String getDeleteForm(Model model,Principal principal) {
			String userId = principal.getName();
			System.out.println("유저 아이디: " + principal.getName());

			MemberVO memberVO = new MemberVO();
			log.info("탈퇴페이지", memberVO);
			model.addAttribute("memberVO", memberVO);
			return "/user/delete";
		}
	   
	   // 회원정보탈퇴 post
	   @PostMapping("/deleteUser")
	   public String deleteUser(HttpServletRequest request , @AuthenticationPrincipal MemberContext ctx,HttpSession session,HttpServletResponse response ,MemberVO memberVO,  Model model) throws Exception {
	      log.info("post deleteUser");
	      log.info("deleteUser..: Principal" + ctx.getMemberVO());
	      if (ctx.getMemberVO() != null) {   
	         
	         memberService.deleteUser(ctx.getMemberVO());
	         log.info("성공");
	         return "redirect:/logout";         
	      }else {
	    	  log.info("없음");
	    	  return "redirect:/loginForm";      
	      }
	   }
}

