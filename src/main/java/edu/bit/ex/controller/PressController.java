package edu.bit.ex.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import edu.bit.ex.service.BoardService;
import edu.bit.ex.service.ProductMainService;
import edu.bit.ex.vo.MemberVO;
import edu.bit.ex.vo.OrderDetailVO;
import edu.bit.ex.vo.OrderVO;
import edu.bit.ex.vo.ProductMainVO;
import edu.bit.ex.vo.account.MemberContext;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
@AllArgsConstructor
@Slf4j
public class PressController {

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private ProductMainService productMainService;
	
	
		// 마이페이지 (구매내역) 상세보기
		@ResponseBody
		@RequestMapping("/board/purchase_view")
		public List<OrderDetailVO> purchase_view(OrderDetailVO orderDetailVO, Model model ){
			log.info("purchase_view()..");
			log.info("purchase_view()..OrderDetailVO" + orderDetailVO);

			List<OrderDetailVO> orderDetailList = boardService.getOrder(orderDetailVO.getOrder_id());
			
			model.addAttribute("orderDetailList",orderDetailList );

			log.info("purchase_view_Get " + boardService.getOrder(orderDetailVO.getOrder_id()));

			return orderDetailList;
		}
		



}