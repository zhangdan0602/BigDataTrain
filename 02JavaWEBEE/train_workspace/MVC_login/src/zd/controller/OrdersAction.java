package zd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import zd.model.Orders;
import zd.model.User;
import zd.service.OrdersService;
import zd.service.impl.OrdersServiceImpl;
import zd.vo.OrdersVo;

@Controller
public class OrdersAction {
	/**
	 * springmvc提供了参数绑定的机制，如果参数的名字和对象的属性名一样， 就会自动绑定到对象的属性当中
	 */
	@RequestMapping("/ordersList.shtml")
	public String ordersList(OrdersVo vo, HttpSession session, Model model) {
		if (vo == null) {
			vo = new OrdersVo();
		}
		User user = (User) session.getAttribute("user");
		System.out.println("++"+user);
		vo.setUserId(user.getUserId());
		// 查询用户的订单以及商品、收货人等信息
		OrdersService ordersService = new OrdersServiceImpl();
		List<Orders> ordersList = ordersService.findOrdersAndItemsAndPost(vo);
		model.addAttribute("ordersList", ordersList);
		model.addAttribute("vo", vo);
		return "ordersList";
	}
}
