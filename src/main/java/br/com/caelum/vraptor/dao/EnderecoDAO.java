package br.com.caelum.vraptor.dao;

import br.com.caelum.vraptor.hibernateutil.HibernateUtil;
import br.com.caelum.vraptor.interfaces.DAOInterface;
import br.com.caelum.vraptor.models.Endereco;
import br.com.caelum.vraptor.models.Pessoa;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import java.util.List;
import java.util.logging.Logger;

/**
 * Created by gabriel on 02/04/17.
 */
public class EnderecoDAO implements DAOInterface<Endereco> {

    Session session;

    public EnderecoDAO() {
        this.session = HibernateUtil.build();
    }

    @Override
    public void create(Endereco endereco) {
        Transaction tx = this.session.beginTransaction();
        this.session.save(endereco);
        tx.commit();
    }

    @Override
    public Endereco read(int id) {

        Criteria criteria = session.createCriteria(Endereco.class);
        criteria.add(Restrictions.eq("id",id));
        return (Endereco) criteria.uniqueResult();
    }

    @Override
    public void update(Endereco endereco) {

        Endereco e = this.read(endereco.getId());

        Transaction x = session.beginTransaction();


        e.setBairro(endereco.getBairro());
        e.setCep(endereco.getCep());
        e.setCidade(endereco.getCidade());
        e.setComplemento(endereco.getComplemento());
        e.setEstado(endereco.getEstado());
        e.setLogradouro(endereco.getLogradouro());

        session.update(e);

        x.commit();

    }

    @Override
    public void delete(int t) {
        Endereco endereco = this.read(t);
        Transaction tx = session.beginTransaction();
        session.delete(endereco);
        tx.commit();
    }

    @Override
    public List<Endereco> list() {
        return null;
    }
}
