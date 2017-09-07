package zd.service;

import java.util.List;

import zd.model.Items;
import zd.vo.ItemsVo;

public interface ItemsService {
 public List<Items> findItemsByVo(ItemsVo vo);
 public List<Items> findItemsByCart(String ids);
}
