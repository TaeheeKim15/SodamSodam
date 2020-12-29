package bitcamp.sodam.service;

import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bitcamp.sodam.beans.Inquiry;
import bitcamp.sodam.beans.Notice;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.dao.InquiryDao;
import bitcamp.sodam.dao.NoticeDao;
import bitcamp.sodam.dao.UserDao;

@Service
public class DefaultInquiryService implements InquiryService {

	@Autowired
	InquiryDao inquiryDao;

	@Override
	public List<Inquiry> list() throws Exception {
		return inquiryDao.findAll();
	}

	@Override
	public Inquiry get(int qno) throws Exception {
		return inquiryDao.findByNo(qno);
	}

	@Override
	public void update(Inquiry inquiry) throws Exception {
		inquiryDao.update(inquiry);
	}

	@Override
	public List<Inquiry> list(int uno) throws Exception {
	  return inquiryDao.findQList(uno);
	}
}
