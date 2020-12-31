package bitcamp.sodam.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

import bitcamp.sodam.database.BasketMapper;
import bitcamp.sodam.database.CategoryMapper;
import bitcamp.sodam.database.CouponMapper;
import bitcamp.sodam.database.FAQMapper;
import bitcamp.sodam.database.InquiryMapper;
import bitcamp.sodam.database.NoticeMapper;
import bitcamp.sodam.database.OrderMapper;
import bitcamp.sodam.database.ProductMapper;
import bitcamp.sodam.database.StoreMapper;
import bitcamp.sodam.database.UserMapper;
import bitcamp.sodam.interceptor.CheckAdminLoginInterceptor;
import bitcamp.sodam.interceptor.CheckLoginInterceptor;


// Spring MVC 프로젝트에 관련된 설정을 하는 클래스
// xml설정에서 servlet-context.xml을 대체하는 클래스
@Configuration
// Controller 어노테이션이 셋팅되어 있는 클래스를 Controller로 등록한다.
@EnableWebMvc
// 스캔할 패키지를 지정한다.
@ComponentScan("bitcamp.sodam.controller")
@ComponentScan("bitcamp.sodam.service")
@ComponentScan("bitcamp.sodam.dao")
// property 사용 (@Value 사용)
@PropertySource("/WEB-INF/properties/db.properties")
public class ServletAppContext implements WebMvcConfigurer {

	@Value("${db.classname}")
	private String db_classname;

	@Value("${db.url}")
	private String db_url;

	@Value("${db.username}")
	private String db_username;

	@Value("${db.password}")
	private String db_password;

	@Bean
	public TilesConfigurer tilesConfigurer() {
		TilesConfigurer configurer = new TilesConfigurer();
		configurer.setDefinitions(new String[]{"/WEB-INF/tiles.xml"});
		configurer.setCheckRefresh(true);
		return configurer;
	}

	@Bean
	public TilesViewResolver tilesViewResolver() {
		TilesViewResolver viewResolver = new TilesViewResolver();
		viewResolver.setViewClass(TilesView.class);
		viewResolver.setOrder(1);

		return viewResolver;
	}

	// Controller의 메서드가 반환하는 JSP의 이름 앞 뒤에 경로와 확장자를 붙여주도록 설정한다.
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/",".jsp");
		registry.order(2);
	}

	// 정적 파일의 경로는 매핑한다.
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/WEB-INF/resources/");
	}

	// 인터셉터를 등록한다.
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addInterceptors(registry);

		CheckLoginInterceptor checkLoginInterceptor = new CheckLoginInterceptor();
		CheckAdminLoginInterceptor checkAdminLoginInterceptor = new CheckAdminLoginInterceptor();

		InterceptorRegistration reg1 = registry.addInterceptor(checkLoginInterceptor);
		InterceptorRegistration reg2 = registry.addInterceptor(checkAdminLoginInterceptor);

		reg1.addPathPatterns("/user_detail");
		reg2.addPathPatterns("/admin/**");
		reg2.excludePathPatterns("/admin/login");
		reg2.excludePathPatterns("/admin/loginPost");
		// registration에 pathPatterns를 여러개 추가하여 여러 path에 대해 인터셉터를 적용할 수 있다.
		// reg1.addPathPatterns("/user_detail", "/user_detail2"); 이런식으로 콤마로 붙여서 추가할 수도 있다.
		// reg1.addPathPatterns("/*"); 이렇게 하면 루트경로 한칸 아래의 모든 주소에 적용된다. ex) /test
		// reg1.addPathPatterns("/**"); 이렇게 하면 루트경로 아래의 모든 하위 주소에 적용된다. ex) /test/test1/test2...
		// reg1.excludePathPatterns("/test"); 인터셉터에서 제외할 경로를 지정한다.
	}

	// 데이터베이스 접속 정보 관리
	// 접속정보를 셋팅하고 정보를 담은 객체를 리턴하는 메서드
	@Bean
	public BasicDataSource dataSource(){
		// BasicDataSource : 아파치에서 제공하는 DB 연결 클래스
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(db_classname);
		source.setUrl(db_url);
		source.setUsername(db_username);
		source.setPassword(db_password);

		return source; // DB 접속 정보를 가진 객체를 리턴
	}

	// 쿼리문과 접속 관리하는 객체
	// 위에서 셋팅한 접속정보를 가지고 DB연결 객체를 만든다.
	@Bean
	// BasicDataSource가 매개변수로 자동 주입된다.
	// SqlSessionFactory : 데이터베이스와의 연결과 SQL의 실행에 대한 모든 것을 가진 객체
	public SqlSessionFactory factory(BasicDataSource source) throws Exception {
		// SqlSessionFactoryBean : SqlSessionFactory를 만들기 위한 클래스
		// SqlSessionFactoryBean 객체를 만들고 DataSource를 주입한뒤
		// getObject로 리턴한 값을 factory에 담는 방식으로 factory 생성
		// 기존 마이바티스에서 SqlSessionFactoryBuilder를 대체하는 클래스
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		factoryBean.setDataSource(source);
		// 셋팅이 완료된 팩토리를 getObject로 가져와서 사용해야 한다.
		// 이유는 모름. 그냥 그렇게 사용하도록 만들었다고 생각하자
		SqlSessionFactory factory = factoryBean.getObject();
		return factory;
	}

	// 쿼리문 실행을 위한 객체
	// 여기서 mapper(쿼리문)와 데이터베이스 연결을 관리하는 factory를 받아서 DB에 Sql문을 날리는 객체를 만든다.(mapper마다 하나씩 만들어줘야함)

	//FAQ Mapper
	@Bean
	public MapperFactoryBean<FAQMapper> faq_mapper(SqlSessionFactory factory) throws Exception{
		MapperFactoryBean<FAQMapper> factoryBean = new MapperFactoryBean<>(FAQMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<UserMapper> user_mapper(SqlSessionFactory factory) throws Exception{
		MapperFactoryBean<UserMapper> factoryBean = new MapperFactoryBean<>(UserMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<BasketMapper> basket_mapper(SqlSessionFactory factory) throws Exception{
		MapperFactoryBean<BasketMapper> factoryBean = new MapperFactoryBean<>(BasketMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<StoreMapper> store_mapper(SqlSessionFactory factory) throws Exception{
		MapperFactoryBean<StoreMapper> factoryBean = new MapperFactoryBean<>(StoreMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<CategoryMapper> category_mapper(SqlSessionFactory factory) throws Exception{
		MapperFactoryBean<CategoryMapper> factoryBean = new MapperFactoryBean<>(CategoryMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<NoticeMapper> notice_mapper(SqlSessionFactory factory) throws Exception{
		MapperFactoryBean<NoticeMapper> factoryBean = new MapperFactoryBean<>(NoticeMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<ProductMapper> product_mapper(SqlSessionFactory factory) throws Exception{
		MapperFactoryBean<ProductMapper> factoryBean = new MapperFactoryBean<>(ProductMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<InquiryMapper> inquiry_mapper(SqlSessionFactory factory) throws Exception{
		MapperFactoryBean<InquiryMapper> factoryBean = new MapperFactoryBean<>(InquiryMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<CouponMapper> coupon_mapper(SqlSessionFactory factory) throws Exception{
		MapperFactoryBean<CouponMapper> factoryBean = new MapperFactoryBean<>(CouponMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	
	@Bean
	public MapperFactoryBean<OrderMapper> order_mapper(SqlSessionFactory factory) throws Exception{
		MapperFactoryBean<OrderMapper> factoryBean = new MapperFactoryBean<>(OrderMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	
	@Bean
	// multipart/form-data로 전송한 데이터를 추출하는 기능을 제공해주는 Bean
	public StandardServletMultipartResolver multipartResolver() {
		return new StandardServletMultipartResolver();
	}
}
