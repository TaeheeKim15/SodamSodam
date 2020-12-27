package bitcamp.sodam.service;

import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bitcamp.sodam.beans.Notice;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.dao.NoticeDao;
import bitcamp.sodam.dao.UserDao;

@Service
public class DefaultNoticeService implements NoticeService {

	@Autowired
	NoticeDao noticeDao;

	@Override
	public List<Notice> list() throws Exception {
		List<Notice> list = noticeDao.findAll();
		return list;
	}

	@Override
	public void add(Notice notice) throws Exception {
		noticeDao.add(notice);
	}

	@Override
	public Notice get(int nno) throws Exception {
		Notice notice = noticeDao.findByNo(nno);
		return notice;
	}

	@Override
	public void update(Notice notice) throws Exception {
		noticeDao.update(notice);
	}

	@Override
	public void delete(String nno) throws Exception {
		noticeDao.delete(nno);
	}
}
