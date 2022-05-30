package net.skhu.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled=true, securedEnabled=true, jsr250Enabled=true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired UserDetailsService userDetailsService;

    // 비밀번호 인코딩
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    // userDetailsService 객체 사용해서 사용자 정보 조회
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService)
            .passwordEncoder(passwordEncoder());
    }

    // res파일은 검사 무시
    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/res/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

    	// 권한 설정
		http.authorizeRequests()
			.antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
			.antMatchers("/professor/**").access("hasRole('ROLE_PROFESSOR')")
		 	.antMatchers("/user/**").authenticated();


    	// 로그인 페이지 설정
        http.formLogin()
            .loginPage("/login") // 로그인 페이지
            .loginProcessingUrl("/login_processing") // 로그인 버튼 눌렀을 때
            .failureUrl("/login?error") // 로그인 실패했을때 redirect
            .defaultSuccessUrl("/", true) // 로그인 성공했을때 redirect
            .usernameParameter("userid")
            .passwordParameter("passwd");

        // 로그아웃 설정
        http.logout()
            .logoutRequestMatcher(new AntPathRequestMatcher("/logout_processing")) // 로그아웃 버튼 눌렀을 때
            .logoutSuccessUrl("/login") // 로그아웃할때 redirect
            .invalidateHttpSession(true); // 세션 지우기
    }

}

