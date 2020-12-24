package bitcamp.sodam.service;

import java.util.List;

import bitcamp.sodam.beans.Basket;


public interface BasketService {
  List<Basket> list(int uno) throws Exception;
}
