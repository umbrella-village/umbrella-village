package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    @RequestMapping("user/index")
    public String index(Model model) { // 로그인한 사용자 정보 보여줌
        return "user/index";
    }
    
    @RequestMapping("user/edit")
    public String edit(Model model) {
    	return "user/edit";
    }
}

