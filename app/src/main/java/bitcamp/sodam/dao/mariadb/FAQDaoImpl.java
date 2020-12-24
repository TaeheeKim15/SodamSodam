package bitcamp.sodam.dao.mariadb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bitcamp.sodam.beans.FAQ;
import bitcamp.sodam.dao.FAQDao;
import bitcamp.sodam.database.FAQMapper;

// Mybatis 적용
// => SqlSessionFactory를 자체적으로 생성하지 않고
//    생성자를 통해 외부에서 주입 받는다.(Dependency Injection: DI)
//

@Repository
public class FAQDaoImpl implements FAQDao {
	
	@Autowired
	private FAQMapper faqMapper;

	@Override
	public List<FAQ> findAll(int type) throws Exception {
		return faqMapper.findAll(type);
	}

	@Override
	public FAQ findByNo(int no) throws Exception {
		return faqMapper.findByNo(no);
	}
}
