package project.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import project.security.CustomUserDetailsService;



@Configuration
@EnableWebSecurity
@ComponentScan(basePackageClasses=CustomUserDetailsService.class)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	private UserDetailsService userDetailsService;
	
	@Bean(name="passwordEncoder")
	public PasswordEncoder passwordEncoder(){
		return new BCryptPasswordEncoder();
	}
	
	
	public void configAuthentification (AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
	}
	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/", "/hello", "/home", "/single-product" ).permitAll()
		.antMatchers("/bucket").access("hasRole('ROLE_USER')")
		.antMatchers("/subscribe").access("hasRole('ROLE_USER')")
		.antMatchers("/create-product").access("hasRole('ROLE_ADMIN')")
		.antMatchers("/my-account").access("hasRole('ROLE_USER')  or hasRole('ROLE_ADMIN')")
		.anyRequest().permitAll().and()
		
		.formLogin().loginPage("/login")
		.defaultSuccessUrl("/home").usernameParameter("email").passwordParameter("password").and()
		.logout().logoutSuccessUrl("/hello?logout").and()
		.exceptionHandling().accessDeniedPage("/403").and()
		.csrf();
	}
	
	@Bean
    public AuthenticationManager customAuthenticationManager() throws Exception {
        return authenticationManager();
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }
	

	
}
