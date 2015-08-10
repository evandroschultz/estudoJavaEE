package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.ProdutoDao;
import br.com.caelum.jdbc.modelo.Produto;

@WebServlet("/adicionaProduto")
public class AdicionaProdutoServlet extends HttpServlet{

	protected void service(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {
                        
        PrintWriter out = response.getWriter();
        
        Produto produto = new Produto();
        produto.setNm_produto(request.getParameter("nmProduto"));
        
        ProdutoDao produtoDao = new ProdutoDao();
        produtoDao.adicionaProduto(produto);
        out.println("<html>");
        out.println("<body>");
        out.println("produto " + produto.getNm_produto() + 
                " adicionado com sucesso");    
        out.println("</body>");
        out.println("</html>");
	}
	
}
