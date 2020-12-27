package bitcamp.sodam.service;

import java.util.List;

import bitcamp.sodam.beans.Inquiry;

public interface InquiryService {
  List<Inquiry> list() throws Exception;
  Inquiry get(int qno) throws Exception;
  void update(Inquiry inquiry) throws Exception;
}
