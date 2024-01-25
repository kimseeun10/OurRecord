package com.record.main.freeboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.record.main.util.Pager;

@Controller
@RequestMapping("/free/*")
public class FreeController {

	@Autowired
	private FreeService freeService;
	
	@GetMapping("freeList")
	public String getFreeList(Model model, Pager pager) throws Exception{
		List<FreeVO> ar = freeService.getFreeList(pager);
		
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		return "free/freeList";
	}
	
	@GetMapping("freeDetail")
	public String freeDetail(FreeVO freeVO, Model model) throws Exception{
		freeVO = freeService.freeDetail(freeVO);
		freeService.hitUpdate(freeVO);
		
		model.addAttribute("vo", freeVO);
		model.addAttribute("move", freeService.movePage(freeVO.getFreeNum()));
		
		return "free/freeDetail";
	}
	
	@GetMapping("freeAdd")
	public String freeAdd(FreeVO freeVO, Model model) throws Exception{
		List<FreeVO> cate = freeService.getCategoryList();
		
		model.addAttribute("cate", cate);
		
		return "free/freeAdd";
	}
	
	@PostMapping("freeAdd")
	public String freeAdd(FreeVO freeVO) throws Exception{
		int result = freeService.freeAdd(freeVO);
		
		return "redirect:./freeList";
	}
}
