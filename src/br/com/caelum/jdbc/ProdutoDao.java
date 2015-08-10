package br.com.caelum.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.management.RuntimeErrorException;

import br.com.caelum.jdbc.modelo.Produto;

public class ProdutoDao {

	private Connection connection;

	public ProdutoDao() {
		this.connection = new ConnectionFactory().getConnection();
		
	}
	

	public void adicionaProduto(Produto produto){
		
		String sql = "INSERT INTO produtos (nm_produto) VALUES (?)";
		
		try {
			
			PreparedStatement smtp = connection.prepareStatement(sql);
			smtp.setString(1, produto.getNm_produto());
			smtp.execute();
			smtp.close();
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
	}
	
}
