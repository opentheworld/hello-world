package com.smart.web;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smart.domain.Role;
import com.smart.service.RoleService;

@Controller
public class RoleController {
	@Autowired
	private RoleService roleService;

	@RequestMapping("/hello.do")
	public String hello(Model model){
		int a = roleService.queryCount();
		model.addAttribute("count", a);
		return "ok";
	}
	
	@RequestMapping("/list.do")
	public String list(Model model,String roleid){
		List<Role> role=null;
		if(roleid==null||"".equals(roleid)){
			model.addAttribute("error", "结果列表：");
			role = roleService.getList(roleid);
			model.addAttribute("role", role);
		}else{
			Pattern p = Pattern.compile("\\d+");
			Matcher m = p.matcher(roleid);
			if(m.matches()){
				model.addAttribute("error", "查询结果：");
				role = roleService.getList(roleid);
				if(role.size()==0){
					model.addAttribute("error", "查询无结果");
				}
				model.addAttribute("role", role);
			}else{
				model.addAttribute("error", "您输入了非数字字符");
			}
		}
		return "list";
	}
}
