package bitcamp.sodam.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bitcamp.sodam.beans.Inquiry;
import bitcamp.sodam.beans.Notice;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.database.InquiryMapper;

@Repository
public class InquiryDao {
	@Autowired
	private InquiryMapper inquiryMapper;

	public List<Inquiry> findAll() throws Exception{
		  return inquiryMapper.findAll();
		}
	
	public Inquiry findByNo(int qno) throws Exception{
		  return inquiryMapper.findByNo(qno);
		}
	
	public void update(Inquiry inquiry) throws Exception{
		  inquiryMapper.update(inquiry);
		}
	
	public List<Inquiry> findQList(int uno) throws Exception{ 
	    return inquiryMapper.findQList(uno);
	}
	
	public void add(Inquiry inquiry) throws Exception{
		  inquiryMapper.addInquiry(inquiry);
		}
}
