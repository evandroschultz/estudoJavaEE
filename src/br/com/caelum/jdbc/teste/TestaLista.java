package br.com.caelum.jdbc.teste;

import java.util.List;

import br.com.caelum.jdbc.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaLista {

	public static void main(String[] args) {
		
		ContatoDao contatoDao = new ContatoDao();
		
		List<Contato> contatos = contatoDao.getLista();
		
		for (Contato contato : contatos) {
			System.out.println("Nome: " + contato.getNome());
		}

	}

}
