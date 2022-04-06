package net.skhu.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import net.skhu.entity.User;
import net.skhu.repository.UserRepository;

@Service
public class MyUserDetailsService implements UserDetailsService {

    @Autowired UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByUserid(username);
        if (user == null) throw new UsernameNotFoundException(username);
        return new MyUserDetails(user);
    }

}

// Spring Security에 필요한 서비스클래스
// username 로그인 아이디로 사용자를 조회. username에 해당하는 사용자를 찾을 수 없다면 exception
// 입력된 패스워드와 MyUserDatails 객체의 패스워드 비교