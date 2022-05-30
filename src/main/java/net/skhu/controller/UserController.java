
package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    @RequestMapping("user/index")
    public String index(Model model) {
        return "user/index";
    }
}

/* 대여기록, 반납 기능

컨트롤러 - 마이페이지로 get 들어오면
		getcurrentuser로 현재사용자 알아내서 사용자모델 뷰로넘겨줌

뷰	- 대여기록 - 현재대여목록 - 현재사용자의 rental중에서 returnDate가 null인것
			 - 과거대여목록 - else

반납 컨트롤러 - rentalService에 returnDate저장해주는 메소드 만들고 불러와서 new Date()로 returnDate 만들어주고,
			해당 우산 umbrellaService.saveRentedOrNot써서 false만들어주기

*/