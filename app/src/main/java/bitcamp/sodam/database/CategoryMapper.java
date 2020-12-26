package bitcamp.sodam.database;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Store;

public interface CategoryMapper {
    @Select("SELECT ctno, ctname FROM tmk_category_list")
    List<Category> findAll();
    
    @Insert("insert into tmk_category_list(ctname) VALUES(#{ctname})")
    void insert(String ctname);
    
    @Delete("DELETE FROM tmk_category_list WHERE ctno = #{ctno}")
    void delete(int ctno);
    
    @Update("UPDATE tmk_category_list SET ctname = #{ctname} WHERE ctno = #{ctno}")
    void update(Category category);
    
    @Select("SELECT c.sno, c.ctno, cl.ctname FROM tmk_category c JOIN tmk_category_list cl on c.ctno = cl.ctno WHERE sno = #{sno}")
    List<Category> findByNo(int sno);
    
    @Insert("insert into tmk_category(sno, ctno) values(#{sno}, #{category})")
    void addCategoryStore(@Param("category") String category, @Param("sno") String sno);
    
    @Select("SELECT LAST_INSERT_ID()")
    String insertId();
}