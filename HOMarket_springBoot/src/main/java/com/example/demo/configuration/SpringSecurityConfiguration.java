package com.example.demo.configuration;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SpringSecurityConfiguration extends WebSecurityConfigurerAdapter {

//	@Autowired
//	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//		auth.inMemoryAuthentication().withUser("admin").password("admin").roles("USER");
//		auth.inMemoryAuthentication().withUser("admin").password("admin").roles("ADMIN");
//	}

	@Autowired
	private DataSource securityDataSource;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		auth.inMemoryAuthentication()
			.withUser("admin").password("{noop}admin").roles("ADMIN")
		.and()
			.withUser("user").password("{noop}user").roles("USER");
//		auth.inMemoryAuthentication().withUser("admin").password("admin").roles("ADMIN");

//		auth.inMemoryAuthentication().withUser("osos").password("123").roles("USER").and().withUser("admin")
//				.password("admin").roles("ADMIN");
//		auth.jdbcAuthentication()
//		.dataSource(securityDataSource)
//				.withUser("admin").password("123");

//				.usersByUsernameQuery("select name ,password ,1 as enabled from Customer where name=?")
//				.authoritiesByUsernameQuery(
//						"SELECT Customer.name ,Role.name  FROM Customer"
//						+ " JOIN Customer_Role ON Customer_Role.customer_id = customer_id"
//						+ " JOIN Role ON Role.id=Customer_Role.customer_id"
//						+ " WHERE Customer.name = ? ");

	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.authorizeRequests()
				.antMatchers("/**").permitAll()
				.antMatchers("/resources/**").permitAll()
				.antMatchers("/customer/**").hasRole("USER")
				.antMatchers("/admin/**").hasRole("ADMIN")
				.anyRequest().authenticated()
				.and()
			.formLogin()
				.loginPage("/login")
				.loginProcessingUrl("/authenticateTheUser")
				.defaultSuccessUrl("/")
				.permitAll()
				.and()
			.logout()
				.permitAll()
				.and()
			.exceptionHandling()
				.accessDeniedPage("/access-denied");
	}
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//		http.authorizeRequests().antMatchers("/**", "/resources/**").permitAll().anyRequest().authenticated()
//				.antMatchers("/customer/**").hasRole("USER").antMatchers("/admin/**").hasRole("ADMIN").and().formLogin()
//				.loginPage("/login").loginProcessingUrl("/authenticateTheUser").defaultSuccessUrl("/").permitAll().and()
//				.logout().permitAll().and().exceptionHandling().accessDeniedPage("/access-denied");
//	}

}
