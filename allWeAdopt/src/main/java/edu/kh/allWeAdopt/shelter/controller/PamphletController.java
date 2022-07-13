package edu.kh.allWeAdopt.shelter.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kh.allWeAdopt.board.model.vo.BoardDetail;
import edu.kh.allWeAdopt.member.model.vo.Member;
import edu.kh.allWeAdopt.shelter.model.service.ShelterService;

@SessionAttributes({"loginMember"})
@RequestMapping("/shelter")
@Controller
public class PamphletController {
	
	@Autowired
	private ShelterService service;
	
	private Logger logger = LoggerFactory.getLogger(ShelterController.class);
	
	// 전단지 목록 조회 
	@GetMapping("/pamphlet/list")
	public String pamphletList(@RequestParam(value = "cp", required = false, defaultValue = "1") int cp, Model model, 
			@RequestParam Map<String, Object> paramMap) {
		
		logger.info("전단지 목록 수행");
		
		
		Map<String , Object> map = null;
		

		map = service.selectPamphletList(cp);

		
		model.addAttribute("map", map);
		
		
		return "shelter/shelter-pamphlet";
	}
		
		
		// 전단지 상세 조회
		@GetMapping("/pamphlet/detail/{boardNo}")
		public String pamphletDetail(@PathVariable("boardNo") int boardNo, @RequestParam(value="cp", required=false, defaultValue="1") int cp,
									Model model, HttpSession session, HttpServletRequest req, HttpServletResponse resp) {
			
			BoardDetail detail = service.pamphletDetail(boardNo);
			
			model.addAttribute("detail", detail);
			
			return "shelter/shelter-pamphletDetail";
			
		}
		
		
		// 전단지 작성 화면
		@GetMapping("/pamphlet/write")
		public String pamphletWriteForm(String mode, @RequestParam(value="no", required=false, defaultValue="0") int boardNo, Model model) {
			
			if(mode.equals("update")) {
				
				// 게시글 상세조회 서비스 호출
				BoardDetail detail = service.pamphletDetail(boardNo);
				// -> 개행문자가 <br>로 되어있는 상태 -> textarea 출력 예정이기 때문에 \n으로 변경
				
//				detail.setBoardContent(Util.newLineClear(detail.getBoardContent()));
				
				model.addAttribute("detail", detail);
			}
			
			return "shelter/shelter-pamphletWrite";
			
		}
		
		
//		// 전단지 작성(삽입/수정)
		@PostMapping("/pamphlet/write")
		public String pamphletWrite(BoardDetail detail, @ModelAttribute("loginMember") Member loginMember, String mode, 
				@RequestParam(value="cp", required=false, defaultValue="1") int cp, Model model, RedirectAttributes ra, HttpServletRequest req ) {
			
			// 로그인한 회원 datail에 세팅
			detail.setMemberNo(loginMember.getMemberNo());
			
			
			if(mode.equals("insert")) { // 삽입
				
				int boardNo = service.insertPamphlet(detail);
				
				String path = null;
				String message = null;
				
				
				if(boardNo>0) {
					path = "../pamphlet/detail/" + boardNo;
					message = "게시글 등록 성공";
				}else {
					path = req.getHeader("referer");
					message = "게시글 등록 실패";
				}
				
				
				
				ra.addFlashAttribute("message", message);
				
				return "redirect:" + path;
				
				
			}else { // 수정
				
				int result = service.updatePamphlet(detail);
				
				String path = null;
				String message = null;
				
				if(result>0) {
					message = "게시글 수정 성공 ~.~";
					path = "../pamphlet/detail/" + detail.getBoardNo() + "?cp=" + cp;
				}else {
					message = "게시글 수정 실패...";
					path = req.getHeader("referer");
				}
				
				ra.addFlashAttribute("message", message);
				
				return "redirect:" + path; 
				
			}
			
			
			
			
		}

}
