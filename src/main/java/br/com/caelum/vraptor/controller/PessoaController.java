package br.com.caelum.vraptor.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.hibernateutil.HibernateUtil;
import br.com.caelum.vraptor.models.Pessoa;
import org.hibernate.Criteria;
import org.hibernate.Transaction;

import javax.inject.Inject;


@Controller
public class PessoaController  {



    @Inject
    private Result result;



    @Get("/pessoa")
    public void pessoa(){


        Criteria criteria = HibernateUtil.build().createCriteria(Pessoa.class);
        result.include("pessoas",criteria.list());
    }
    @Post
    public void add(Pessoa pessoa){

        //pessoaService.persist(pessoa);


        Transaction tx = HibernateUtil.build().beginTransaction();

        HibernateUtil.build().save(pessoa);

        tx.commit();

        HibernateUtil.build().close();

        result.redirectTo(this).pessoa();
    }

}
