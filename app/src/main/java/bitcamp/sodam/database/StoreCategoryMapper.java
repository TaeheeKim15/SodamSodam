package bitcamp.sodam.database;

import org.apache.ibatis.annotations.Insert;

import bitcamp.sodam.beans.Category;

public interface StoreCategoryMapper {
  @Insert("insert into tmk_category(sno, ctno) values(#{sno}, #{ctno})")
  void insertStore(Category category);

}
