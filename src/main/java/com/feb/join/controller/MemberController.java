package com.feb.join.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.feb.join.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	/**
	 * 
	 * 회원가입 요청(/join.do) 컨트롤러
	 * 
	 * @param params 회원가입 정보
	 * @return ModelAndView login.jsp 이동
	 */
	@PostMapping("/join.do")
	public ModelAndView join(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		int result = memberService.join(params);
		// result 1 이면 가입 성공 / 아니면 실패 alert
		if(result == 1) {
			mv.addObject("resultMsg", "회원 가입 성공");
		} else {
			mv.addObject("resultMsg", "회원 가입 실패");
		}
		return mv;
	}
}
