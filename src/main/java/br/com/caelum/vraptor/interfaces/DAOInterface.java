package br.com.caelum.vraptor.interfaces;

import java.util.List;


public interface DAOInterface<T> {

     void create(T t);
     T read(int id);
     void update(T t);
     void delete(int t);
     List<T> list();

}
