package br.com.caelum.vraptor.models;


import javax.persistence.*;
import javax.persistence.Entity;
import java.io.Serializable;
import java.util.List;


@Entity
public class Pessoa implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String nome;
    private int idade;
    @OneToMany(mappedBy = "pessoa", targetEntity = Endereco.class,fetch = FetchType.EAGER,cascade=CascadeType.ALL,orphanRemoval = true)
    private List<Endereco> enderecos;

    public List<Endereco> getEnderecos() {
        return enderecos;
    }

    public void setEnderecos(List<Endereco> enderecos) {
        this.enderecos = enderecos;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    @Override
    public String toString() {
        return "Pessoa{" +
                "id=" + id +
                ", nome='" + nome + '\'' +
                ", idade=" + idade +
                ", enderecos=" + enderecos +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Pessoa pessoa = (Pessoa) o;

        if (id != pessoa.id) return false;
        if (idade != pessoa.idade) return false;
        if (nome != null ? !nome.equals(pessoa.nome) : pessoa.nome != null) return false;
        return enderecos != null ? enderecos.equals(pessoa.enderecos) : pessoa.enderecos == null;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (nome != null ? nome.hashCode() : 0);
        result = 31 * result + idade;
        result = 31 * result + (enderecos != null ? enderecos.hashCode() : 0);
        return result;
    }
}
