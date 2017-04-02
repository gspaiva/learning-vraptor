package br.com.caelum.vraptor.hibernateutil;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Created by gabriel on 01/04/17.
 */
public class HibernateUtil{

    public static Session build(){

        Configuration configuration = new Configuration();

        configuration.configure();

        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();

        return session;
    }


}
