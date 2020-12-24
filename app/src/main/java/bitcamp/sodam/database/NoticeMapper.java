package bitcamp.sodam.database;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import bitcamp.sodam.beans.Notice;

public interface NoticeMapper {
	@Select("select nno, ntitle, ncontent, ndate, nv_cnt from tmk_notice")
    List<Notice> findAll();
	
	@Insert("insert into tmk_notice(ntitle, ncontent) VALUES(#{ntitle}, #{ncontent})")
    void addNotice(Notice notice);
	
	@Select("select nno, ntitle, ncontent, ndate, nv_cnt from tmk_notice where nno=#{nno}")
    Notice findByNo(int nno);
}