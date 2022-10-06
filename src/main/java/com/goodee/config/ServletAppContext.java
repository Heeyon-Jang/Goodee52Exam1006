package com.goodee.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

// Spring MVC프로젝트에 관련된 설정을 하는 클래스
@Configuration
// Controller 어노테이션이 세팅되어 있는 클래스를 등록하는 어노테이션
@EnableWebMvc
// 스캔할 패키지 지정
@ComponentScan("com.goodee")
// MyBatis에서 인터페이스 정보를 스캔하도록 어노테이션 설정
// - basePackages : 어디 패키지에서 정보를 읽어올 것인가.
// - annotationClass : 어떤 어노테이션을 넣었을 시 해당 클래스를 매퍼로 스캔할 것인가.
@MapperScan(basePackages = {"com.goodee.dao"}, annotationClass = org.apache.ibatis.annotations.Mapper.class)
// 사용할 프로퍼티 지정
@PropertySource("/META-INF/properties/db.properties")
//@Transactional 설정 메서드를 읽을 때 쓰는 어노테이션
//XML 시에는 <tx:annotation=driven> 설정
@EnableTransactionManagement

public class ServletAppContext implements WebMvcConfigurer{
	
	// DB Connection과 관련된 정보를 properties 에서 field로 가져오기
	@Value("${db.classname}")
	private String classname;
	
	@Value("${db.url}")
	private String url;
	
	@Value("${db.username}")
	private String username;
	
	@Value("${db.password}")
	private String password;
	
	// Controller의 메서드가 반환하는 jsp의 이름 앞뒤에 경로와 확장자를 붙여주도록 설정한다.
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/", ".jsp");
	}
	
	// 정적 파일의 경로 세팅
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
	}
	
	// 데이터 베이스 접속 정보 관리
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(classname);
		source.setUrl(url);
		source.setUsername(username);
		source.setPassword(password);
//		source.setDefaultAutoCommit(false);
		return source;
	}
	
	// 쿼리문과 접속 관리하는 객체
	@Bean("SqlSessionFactory")
	public SqlSessionFactory factory(BasicDataSource source, ApplicationContext context) throws Exception{
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		// DataSource 설정
		sqlSessionFactoryBean.setDataSource(source);
		// Mapper.xml 설정
		sqlSessionFactoryBean.setMapperLocations(context.getResources("/META-INF/mapper/*.xml"));
		// Bean Alias 어노테이션 설정 위치 읽기
		sqlSessionFactoryBean.setTypeAliasesPackage("com.goodee.vo");
		// properties 설정 정보 활용
		// sqlSessionFactoryBean.setConfigurationProperties(mybatisProperties());
		
		// 설정 관련 객체 및 정보 삽입
		org.apache.ibatis.session.Configuration configuration
					= new org.apache.ibatis.session.Configuration();
		configuration.setMapUnderscoreToCamelCase(true);
		configuration.setCacheEnabled(false);
		configuration.setUseGeneratedKeys(true);
		configuration.setDefaultExecutorType(ExecutorType.REUSE);
		
		sqlSessionFactoryBean.setConfiguration(configuration);
		
		return sqlSessionFactoryBean.getObject();
	}
	
	// 트랜잭션 실행 객체 1 번째 방식
	/* DataSourceTransactionManager
	 * - 스프링에서 JDBC 및 myBatis 등의 JDBC 기반 라이브러리로 데이터베이스에 접근하는 경우 사용하는 
	 *   트랜잭션 인터페이스
	 * - 어떤 ORM을 사용하든지에 관계없이 dataSource에 다이렉트로 물려 사용하므로 환경에 상관없이 사용 가능하다.
	 * - 강제성을 가지며 반드시 인자로 dataSource를 받아야한다.
	 * 
	 * 얘를 만나는 순간 바로 트랜잭션 실행, 얄짤없음 바로 rollback
	 */
	@Bean
	public DataSourceTransactionManager transactionManager() {
		return new DataSourceTransactionManager(dataSource());
	}
	
	// 트랜잭션 실행 객체 2 번째 방식
	/* TransactionTemplate를 이용한 트랜잭션 제어
	 * - 트랜잭션 매니저를 직접적으로 핸들링 하는 방식은 반복적으로 선언해야하고 각 메서드마다 사용해 줘야 하기 대문에
	 *   불필요한 반복적인 로직을 작성해야한다는 점이 있다.
	 * - try~catch문을 반복적으로 쓰면서 불필요한 에러처리를 해야 하므로 사용자 입장에서는 불편할 수 있음
	 * - Spring은 선언적 트랜잭션을 하는 방식 외에 트랜잭션 관리를 대신 해줄 수 있는 객체를 제공하는데 그것이 바로 
	 * 	 TransactionTemplate이다.
	 * - TransactionTemplate은 기존의 transactionManager를 인자로 받아 수행하는 객체이다. 
	 */
	
	
	 /* 
	 *  스프링 컨테이너를 타켓으로 잡아서 관리해줌
	 *  위에manager에 비해서 간편하다거나 특별이 다르진 않고 그냥 스프링이 관리해준다 정도임
	 */
	
	 @Bean
	 public TransactionTemplate transactionTemplate() {
		 return new TransactionTemplate(transactionManager());
	 }
	 
	 // 트랜잭션 실행 객체 3 번째 방식
	 /* @Transactional Annotation 사용
	  * - 위의 두 방식의 경우 트랜잭션과 핵심 로직의 분리가 완벽하게 이루어지지 않음
	  * - 현재 로직과는 별개로 공통로직의 분리가 이루어지지 않음으로써 오히려 로직에 대한 복잡도가 가중됨
	  * - 간단하게 핸들링 할 수 있는 API를 제공하였다 하더라도 이 방식의 경우 오히려 가독성의 오류와 
	  *   로직의 재사용성이 침해되는 결과만 낳게 된다.
	  * - 스프링에서는 이러한 방식을 버리고 핵심 로직과 공통 로직을 분리하기 위해 aop라는 개념을 도입하게 되었는데
	  *   이 방법을 도입함에 있어서 트랜잭션 또한 핵심 로직에 영향을 미치지 않는 형태로 발전하게 됨
	  * - 그 결과 @Transactional 이라는 어노테이션만으로 트랜잭션을 쓸 수 있는 방식을 스프링에서 제공함
	  * - 이 방식을 사용하기 위해서는 반드시 자바 설정에서는 @EnableTransactionmanager라는 어노테이션이
	  *   @Configuration에 존재해야 한다.
	  * - 또한 @Transactional이라는 어노테이션이 ComponentScan 영역안에 있어야한다.
	  * 
	  * 참고 :1. myBatis 사용 시 매퍼는 반드시 public으로 되어있어야하며 그렇지 않을 경우 트랜잭션이 먹히지 않음
	  * 	 2. @Transactional을 달아놓은 메소드가 동일한 클래스 내의 다른메소드에 의해 호출될 경우 트랜잭션은 정상작동하지 않음
	  * 
	  * 위에 @EnableTransactionManager사용함
	  */
	 
}
