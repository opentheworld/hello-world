package com.smart.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smart.domain.User;
import com.smart.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	
	@RequestMapping("/list.do")
	public String list(String userid,Model model,HttpServletResponse response){
		if(userid!=null&&!"".equals(userid)){
			User user = userService.findUserById(Integer.parseInt(userid));
			model.addAttribute("user", user);
		}
		//往客户端写入cookie
		Cookie cookie = new  Cookie("username","wanggan");
		cookie.setMaxAge(6000);
		response.addCookie(cookie);
		//下面代码用于ajax请求的返回值
		/*try {
			PrintWriter out = response.getWriter();
			out.print(123);
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		return "user/list";
	}
}
