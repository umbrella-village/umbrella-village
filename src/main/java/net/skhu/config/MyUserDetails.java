package net.skhu.config;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Data;
import net.skhu.entity.Rental;
import net.skhu.entity.User;


@Data
public class MyUserDetails implements UserDetails {
    private static final long serialVersionUID = 1L;

    // Spring Security
    final boolean accountNonExpired = true;
    final boolean accountNonLocked = true;
    final boolean credentialsNonExpired = true;
    final String password;
    final String username;
    final boolean isEnabled;
    Collection<SimpleGrantedAuthority> authorities = new ArrayList<>();

    final String name;
    final String studentNumber;
    final String email;
    final String phone;
    final String userType;
    final boolean admin;
    final List<Rental> rentals;

    final User user;

    public MyUserDetails(User user) {
    	// DB에서 조회한 사용자 정보 들어있음
    	switch (user.getUserType()) {
    	case "교수": authorities.add(new SimpleGrantedAuthority("ROLE_PROFESSOR")); break;
		case "학생": authorities.add(new SimpleGrantedAuthority("ROLE_STUDENT")); break;
    	}
    	if (user.isAdmin()) authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
        this.username = user.getUserid();
        this.password = user.getPassword();
        this.isEnabled = user.isEnabled();

        this.name = user.getName();
        this.studentNumber = user.getStudentNumber();
        this.email = user.getEmail();
        this.phone = user.getPhone();
        this.userType = user.getUserType();
        this.admin = user.isAdmin();
        this.rentals = user.getRentals();

        this.user = user;
    }

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return null;
	}
}
