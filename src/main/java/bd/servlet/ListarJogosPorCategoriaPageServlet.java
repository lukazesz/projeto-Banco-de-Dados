package bd.servlet;

import java.io.IOException;
import java.util.List;

import bd.dao.CategoriaDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/listarJogosPorCategoriaPage")
public class ListarJogosPorCategoriaPageServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            request.setAttribute("categorias", new CategoriaDAO().listar());
            request.getRequestDispatcher("listarJogosPorCategoria.jsp").forward(request, response);

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}