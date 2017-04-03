package br.com.caelum.vraptor.dao;

import br.com.caelum.vraptor.hibernateutil.HibernateUtil;
import br.com.caelum.vraptor.interfaces.DAOInterface;
import br.com.caelum.vraptor.models.Endereco;
import br.com.caelum.vraptor.models.Pessoa;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;
import java.util.logging.Logger;

public class PessoaDAO implements DAOInterface<Pessoa> {

    Session session;


    public PessoaDAO(){
        this.session = HibernateUtil.build();
    }


    @Override
    public void create(Pessoa p) {

        Transaction tx = this.session.beginTransaction();
        this.session.save(p);
        tx.commit();

    }

    @Override
    public Pessoa read(int id ) {

       Criteria criteria = session.createCriteria(Pessoa.class);
       criteria.add(Restrictions.eq("id",id));
       return (Pessoa) criteria.uniqueResult();
    }

    @Override
    public void update(Pessoa pessoa) {


        Pessoa p = this.read(pessoa.getId());

        Transaction x = session.beginTransaction();

        p.setIdade(pessoa.getIdade());
        p.setNome(pessoa.getNome());

        session.update(p);

        x.commit();

    }

    @Override
    public void delete(int id) {
        Pessoa pessoa = (Pessoa) this.session.load(Pessoa.class,id);

        Transaction tx = session.beginTransaction();
        session.delete(pessoa);
        tx.commit();

    }

    @Override
    public List<Pessoa> list() {

        Criteria criteria = session.createCriteria(Pessoa.class);
        return criteria.list();

    }
    public void deleteEnderecoLista(Endereco endereco, int idPessoa){
        Transaction tx = session.beginTransaction();
        Pessoa p = this.read(idPessoa);
        p.getEnderecos().remove(endereco);
        tx.commit();
    }

}
