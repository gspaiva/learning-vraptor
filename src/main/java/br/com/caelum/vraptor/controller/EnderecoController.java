package br.com.caelum.vraptor.controller;

import br.com.caelum.vraptor.*;
import br.com.caelum.vraptor.dao.EnderecoDAO;
import br.com.caelum.vraptor.dao.PessoaDAO;
import br.com.caelum.vraptor.models.Endereco;
import br.com.caelum.vraptor.models.Pessoa;

import javax.inject.Inject;

@Controller
public class EnderecoController {

    @Inject
    Result result;

    @Inject
    EnderecoDAO enderecoDAO;

    @Inject
    PessoaDAO pessoaDAO;

    @Path("/enderecos")
    public void enderecos(){

        result.include("pessoas",pessoaDAO.list());
        result.include("Ola","Ola");
    }
    @Post
    public void add(Endereco endereco){

        Pessoa pessoa  = pessoaDAO.read(endereco.getPessoa().getId());
        endereco.setPessoa(pessoa);
        enderecoDAO.create(endereco);
        //result.redirectTo(this).enderecos();
    }

    @Delete("/endereco/{id}/pessoa/{idPessoa}")
    public void deleteEndereco( int id, int idPessoa){
        Endereco endereco = enderecoDAO.read(id);
        pessoaDAO.deleteEnderecoLista(endereco,idPessoa);
        result.redirectTo(PessoaController.class).pessoa_enderecos(idPessoa);
    }

    @Get("/endereco/{id}")
    public void editar(int id){
        Endereco endereco = enderecoDAO.read(id);
        result.include("endereco",endereco);
    }
    @Put("endereco/{endereco.id}")
    public void atualizar(Endereco endereco){

        enderecoDAO.update(endereco);
        result.redirectTo(IndexController.class).index();
    }

}
