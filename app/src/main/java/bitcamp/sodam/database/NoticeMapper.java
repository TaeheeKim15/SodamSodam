package bitcamp.sodam.database;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Notice;

public interface NoticeMapper {
	@Select("select nno, ntitle, ncontent, ndate, nv_cnt from tmk_notice")
    List<Notice> findAll();
	
	@Insert("insert into tmk_notice(ntitle, ncontent) VALUES(#{ntitle}, #{ncontent})")
    void addNotice(Notice notice);
	
	@Update("UPDATE tmk_notice SET ntitle = #{ntitle}, ncontent = #{ncontent} WHERE nno = #{nno}")
    void update(Notice notice);
	
	@Delete("DELETE FROM tmk_notice WHERE nno = #{nno}")
    void delete(String nno);
	
	@Select("select nno, ntitle, ncontent, ndate, nv_cnt from tmk_notice where nno=#{nno}")
    Notice findByNo(int nno);
}