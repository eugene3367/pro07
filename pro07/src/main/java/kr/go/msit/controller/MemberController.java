package kr.go.msit.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.go.msit.dto.MemberDTO;
import kr.go.msit.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);


	@Autowired
	MemberService memberService;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping(value="list.do", method = RequestMethod.GET)
	public String memberList(Model model) throws Exception{
		List<MemberDTO> memberList = memberService.memberList();
		model.addAttribute("memberList", memberList);
		return "member/memberList";
	}
	
	
	//회원 가입 - 약관 동의 페이지 로딩
	@GetMapping("agree.do")
	public String getAgree(Model model) throws Exception {
		return "member/agree";
	}	
	
	//회원 가입 - 회원가입폼 페이지 로딩
	@GetMapping("join.do")
	public String getJoin(Model model) throws Exception {
		return "member/memberInsert";
	}
	
	//회원 가입 - Ajax로 아이디 중복 체크 
	@RequestMapping(value="idCheck.do", method=RequestMethod.POST)
	public void idCheck(HttpServletResponse response, HttpServletRequest request, Model model) throws Exception {
		String id = request.getParameter("id");
		boolean result = false;
		MemberDTO dto = new MemberDTO();
		dto = memberService.getMember(id);

		if(dto!=null){	//이미 있는 아이디임
			result = false;
		} else {
			result = true;
		}
		JSONObject json = new JSONObject();
		json.put("result", result);
		PrintWriter out = response.getWriter();
		out.println(json.toString());
	}
	
	//회원 가입 - 회원 가입 처리
	@RequestMapping(value="insert.do", method = RequestMethod.POST)
	public String memberWrite(MemberDTO member, Model model) throws Exception {
		//비밀번호 암호화
		String userpw = member.getPw();
		String pwd = pwdEncoder.encode(userpw);
		member.setPw(pwd);
		memberService.memberInsert(member);
		return "redirect:/";
	}	
	
	//로그인 폼 로딩
	@RequestMapping("loginForm.do")
	public String memberLoginForm(Model model) throws Exception{
		return "member/loginForm";
	}
	
	//로그인 	- 컨트롤러에서 세션 처리
	@RequestMapping(value="signin.do", method = RequestMethod.POST)
	public String memberSignin(@RequestParam String id, @RequestParam String pw, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		session.invalidate();
		MemberDTO mdto = new MemberDTO();
		mdto.setPw(pw);
		mdto.setId(id);
		MemberDTO login = memberService.signIn(mdto);
		boolean loginSuccess = pwdEncoder.matches(mdto.getPw(), login.getPw());
		if(loginSuccess && login!=null) {
			session.setAttribute("member", login);
			session.setAttribute("sid", id);
			return "redirect:/";
		} else {
			return "redirect:loginForm.do";
		}
	} 
	
	//로그아웃
	@RequestMapping("logout.do")
	public String memberLogout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/";
	}

}