package bitcamp.sodam.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import bitcamp.sodam.beans.FAQ;

@Repository
public interface FAQDao {
  List<FAQ> findAll(int type) throws Exception;
  FAQ findByNo(int no) throws Exception;
}








