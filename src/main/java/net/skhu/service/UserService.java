package net.skhu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import net.skhu.config.MyUserDetails;
import net.skhu.entity.User;
import net.skhu.model.UserSignUp;
import net.skhu.repository.UserRepository;

@Service
public class UserService {

    @Autowired UserRepository userRepository;
    @Autowired PasswordEncoder passwordEncoder;

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public boolean hasErrors(UserSignUp userSignUp, BindingResult bindingResult) {
        if (bindingResult.hasErrors())
            return true;
        if (userSignUp.getPasswd1().equals(userSignUp.getPasswd2()) == false) {
            bindingResult.rejectValue("passwd2", null, "비밀번호가 일치하지 않습니다.");
            return true;
        }
        User user = userRepository.findByUserid(userSignUp.getUserid());
        if (user != null) {
            bindingResult.rejectValue("userid", null, "사용자 아이디가 중복됩니다.");
            return true;
        }
        return false;
    }

    public User createEntity(UserSignUp userSignUp) {
        User user = new User();
        user.setUserid(userSignUp.getUserid());
        user.setPassword(passwordEncoder.encode(userSignUp.getPasswd1()));
        user.setName(userSignUp.getName());
        user.setStudentNumber(userSignUp.getStudentNumber());
        user.setEmail(userSignUp.getEmail());
        user.setPhone(userSignUp.getPhone());
        user.setEnabled(true);
        user.setUserType(userSignUp.getUserType());
        return user;
    }

    public void save(UserSignUp userSignUp) {
        User user = createEntity(userSignUp);
        userRepository.save(user);
    }

    public User getCurrentUser() { // 현재 사용자
       var myUserDetail = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
       if(myUserDetail instanceof MyUserDetails){
          return ((MyUserDetails)myUserDetail).getUser();
       }else{
          return null;
       }
     }
}

