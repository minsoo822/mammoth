package com.mammoth.infra.modules.order;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mammoth.infra.modules.basket.Basket;
import com.mammoth.infra.modules.basket.BasketServiceImpl;
import com.mammoth.infra.modules.member.Member;
import com.mammoth.infra.modules.member.MemberServiceImpl;
import com.mammoth.infra.modules.member.MemberVo;

@Controller
@RequestMapping(value="/order/")
public class OrderController {
	
	@Autowired
	OrderServiceImpl service;
	@Autowired
	BasketServiceImpl bskservice;
	@Autowired
	MemberServiceImpl mmservice;
	
	
	@RequestMapping(value="orderList")
	public String orderList(Order dto) throws Exception {
		
		
		
		return "infra/member/user/orderList";
	}
	
	@RequestMapping(value="orderForm")
	public String orderForm(@ModelAttribute("vo") OrderVo vo, MemberVo mmvo ,@ModelAttribute("dto")Basket bskdto , Order dto, Model model, HttpSession httpSession) throws Exception {
		
		mmvo.setMmSeq((int)httpSession.getAttribute("sessSeq"));
		System.out.println("-------------------orderForm :" + vo.getMmSeq());
		
		dto.setLastPrice((int)httpSession.getAttribute("sessLastPrice"));
		model.addAttribute("lastPrice", dto.getLastPrice());
		//장바구니에서 주문할때 상품리스트
		List<Order> oderFormList = service.selectList(vo);
		model.addAttribute("oderFormList", oderFormList);
		//회원정보
		Member selectOne = mmservice.selectOne(mmvo);
		model.addAttribute("item", selectOne);
		Member adrselectOne = mmservice.adrselectOne(mmvo);
		model.addAttribute("adritem", adrselectOne);
		//쿠폰 리스트
		List<Order> cuponList = service.cuponList(vo);
		model.addAttribute("cuponList", cuponList);
		
		// 바로구매로 상품리스트 뿌려주기
		List<Order> buyNowList = service.selectList(vo);
		model.addAttribute("oderFormList", buyNowList);
		
		return "infra/member/user/orderForm";
	}
	
	@RequestMapping(value = "checkDel")
	public String memberMultiDele(Basket dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {

		for(int i = 0; i < dto.getCheckboxSeqArray().length; i++) {
			if(i % 2 == 0) {
				int checkboxSeqArr = dto.getCheckboxSeqArray()[i];
				System.out.println("------------seq :" + checkboxSeqArr);
				dto.setPrSeq(checkboxSeqArr); 
				bskservice.oneDel(dto);
			} else {
				dto.setLastPrice((int)httpSession.getAttribute("sessLastPrice"));
				int price = dto.getLastPrice();	
				int checkboxPriceArr = dto.getCheckboxSeqArray()[i];
				int lastPrice = price - checkboxPriceArr;
				httpSession.setAttribute("sessLastPrice", lastPrice);
			}
		}
		dto.setMmSeq(dto.getMmSeq());
		redirectAttributes.addFlashAttribute("dto", dto);

		return "redirect:/order/orderForm";
	}
	
	@RequestMapping(value="orderFormBuyNow")
	public String orderFormBuyNow(Basket dto) throws Exception {
		
		
		
		return "";
	}
	
	@RequestMapping(value="orderInst")
	public String insert(Order dto) throws Exception {
		
		
		//service.buyInst(dto);
		//인서트 시키기
		//장바구니 삭제시키기
		
		
		return "infra/member/user/orderList";
	}
	
	@ResponseBody
	@RequestMapping(value = "kakaopay") 
	public String kakaopay() throws Exception {

		
		
		
		
		
		
//		URL payurl = new URL("https://kapi.kakao.com/v1/payment/ready");
//		HttpURLConnection payservser = (HttpURLConnection) payurl.openConnection();
//		payservser.setRequestMethod("POST");
//		payservser.setRequestProperty("Authorization", "KakaoAK e93e08eea47455811d387bd6eb2aa5a8");
//		payservser.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//		payservser.setDoOutput(true);
//		
//		String dt = "cid=TC0ONETIME"
//				  + "&partner_order_id=partner_order_id"
//				  + "&partner_user_id=partner_user_id&"
//				  + "item_name=초코파이&"
//				  + "quantity=1&"
//				  + "total_amount=2200&"
//				  + "tax_free_amount=0&"
//				  + "approval_url=https://developers.kakao.com/success&"
//				  + "fail_url=https://developers.kakao.com/fail&"
//				  + "cancel_url=https://developers.kakao.com/cancel";
//		
//		OutputStream orderform = payservser.getOutputStream();
//		DataOutputStream foment = new DataOutputStream(orderform);
//		foment.writeBytes(dt);
//		foment.close();
//		
//		int result = payservser.getResponseCode();
//		
//		InputStream take;
//		if(result == 200) {
//			take = payservser.getInputStream();
//		} else {
//			take = payservser.getErrorStream();			
//		}
//		InputStreamReader read =new InputStreamReader(take); 
//		BufferedReader change =new BufferedReader(read);
//		
//		return change.readLine();
		
		return "";
				
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
