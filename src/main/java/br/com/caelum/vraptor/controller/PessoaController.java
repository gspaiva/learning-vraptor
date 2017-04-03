package br.com.caelum.vraptor.controller;

import br.com.caelum.vraptor.*;
import br.com.caelum.vraptor.dao.EnderecoDAO;
import br.com.caelum.vraptor.dao.PessoaDAO;
import br.com.caelum.vraptor.hibernateutil.HibernateUtil;
import br.com.caelum.vraptor.models.Endereco;
import br.com.caelum.vraptor.models.Pessoa;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.inject.Inject;
import java.util.logging.Logger;


@Controller
public class PessoaController  {



    @Inject
    private Result result;

    @Inject
    private PessoaDAO pessoaDAO;

    @Inject
    private EnderecoDAO enderecoDAO;

    @Get("/pessoa")
    public void pessoa(){
        result.include("pessoas",pessoaDAO.list());
    }
    @Post
    public void add(Pessoa pessoa){
        pessoaDAO.create(pessoa);
        result.redirectTo(IndexController.class).index();
    }
    @Get("/pessoa/{id}")
    public void editar(int id){

        if(pessoaDAO.read(id) != null){
            result.include("pessoa",pessoaDAO.read(id));
        }
        else
        {
            result.redirectTo(this).notFound(id);
        }

    }

    @Put("/pessoa/{pessoa.id}")
    public void atualizar(Pessoa pessoa){
        pessoaDAO.update(pessoa);
        result.redirectTo(IndexController.class).index();
    }
    @Get("/pessoa/{id}/endereco")
    public void endereco(int id){
        result.include("id",id);
    }
    @Post("/pessoa/{id}/add/endereco")
    public void add_endereco(int id, Endereco endereco){
        Pessoa pessoa = pessoaDAO.read(id);

        endereco.setPessoa(pessoa);

        enderecoDAO.create(endereco);

        result.redirectTo(IndexController.class).index();

    }
    @Get("/pessoa/{id}/enderecos")
    public void pessoa_enderecos(int id){

        result.include("pessoa",pessoaDAO.read(id));
    }
    @Delete("/pessoa/{id}")
    public void delete_pessoa(int id){
        pessoaDAO.delete(id);
        result.redirectTo(IndexController.class).index();
    }
    @Get("/pessoa/add")
    public void adiciona(){

    }
    public void notFound(int id){
        result.include("id",id);
    }


}
