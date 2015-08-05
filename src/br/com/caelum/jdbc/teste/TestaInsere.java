package br.com.caelum.jdbc.teste;

import java.util.Calendar;

import br.com.caelum.jdbc.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaInsere {

	public static void main(String[] args) {
		
		Contato contato = new Contato();
		
		contato.setNome("Evandro Schultz");
		contato.setEmail("Evandro_schultz@yahoo.com.br");
		contato.setEndereco("Intendente Albino Lenz, 925");
		contato.setDataNascimento(Calendar.getInstance());

		ContatoDao dao = new ContatoDao();
		dao.adiciona(contato);
		System.out.println("Gravado!!!!");	
		
	}

}
