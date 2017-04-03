package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.PessoaDAO;

@Controller
public class IndexController {

	@Inject
	private  Result result;
	@Inject
	PessoaDAO pessoaDAO;


	@Path("/")
	public void index() {
		result.include("pessoas", pessoaDAO.list());
	}
}