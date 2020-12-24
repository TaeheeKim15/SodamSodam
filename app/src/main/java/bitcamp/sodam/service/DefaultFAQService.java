package bitcamp.sodam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bitcamp.sodam.beans.FAQ;
import bitcamp.sodam.dao.FAQDao;

@Service
public class DefaultFAQService implements FAQService {
	
	@Autowired
	FAQDao faqDao;

	@Override
	public List<FAQ> list(int type) throws Exception {
		return faqDao.findAll(type);
	}

	@Override
	public FAQ get(int no) throws Exception {
		FAQ faq = faqDao.findByNo(no);
		return faq;
	}
}
