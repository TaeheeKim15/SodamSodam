package bitcamp.sodam.service;

import java.util.List;

import bitcamp.sodam.beans.FAQ;



public interface FAQService {
  List<FAQ> list(int type) throws Exception;
  FAQ get(int no) throws Exception;
}
