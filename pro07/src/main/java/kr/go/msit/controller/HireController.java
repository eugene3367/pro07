package kr.go.msit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.go.msit.dto.HireDTO;
import kr.go.msit.service.HireService;

@Controller
@RequestMapping("/hire/")
public class HireController {

	
	@Autowired
	private HireService hireService;
	
	@GetMapping("list.do")		//board/list.do
	public String getHireList(Model model) throws Exception {
		List<HireDTO> hireList = hireService.hireList(); 
		model.addAttribute("hireList", hireList);
		return "hire/hireList";
	}
	
	@GetMapping("detail.do")	//board/detail.do?seq=1
	public String getHireDetail(HttpServletRequest request, Model model) throws Exception {
		int seq = Integer.parseInt(request.getParameter("seq"));
		HireDTO dto = hireService.hireDetail(seq);
		model.addAttribute("dto", dto);
		return "hire/hireDetail";
	}

	//폼 
	@GetMapping("insert.do")
	public String insertForm(HttpServletRequest request, Model model) throws Exception {
		return "hire/hireInsert";
	}
	
	@PostMapping("insert.do")
	public String hireInsert(HttpServletRequest request, Model model) throws Exception {
		HireDTO dto = new HireDTO();
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		hireService.hireInsert(dto);
		
		return "redirect:list.do";
	}
	
	@GetMapping("delete.do")
	public String hireDelete(HttpServletRequest request, Model model) throws Exception {
		int seq = Integer.parseInt(request.getParameter("seq"));
		hireService.hireDelete(seq);
		
		return "redirect:list.do";
	}
	
	@GetMapping("edit.do")
	public String editForm(HttpServletRequest request, Model model) throws Exception {
		int seq = Integer.parseInt(request.getParameter("seq"));
		HireDTO dto = hireService.hireDetail(seq);
		model.addAttribute("dto", dto);
		return "hire/hireEdit";
	}
	
	@PostMapping("edit.do")
	public String hireEdit(HttpServletRequest request, Model model) throws Exception {
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		HireDTO dto = new HireDTO();
		dto.setSeq(seq);
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		hireService.hireEdit(dto);
		
		return "redirect:list.do";
	}


}
