package bitcamp.sodam.database;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import bitcamp.sodam.beans.Category;
import bitcamp.sodam.beans.Store;

  @Insert("insert into tmk_category(sno, ctno)"
      + "values(#{sno}, #{ctno}")
  int insertStore(Category category);

}
