package bd.servlet;

import java.io.IOException;

import bd.dao.CategoriaDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/listarJogosPorCategoria")
public class ListarJogosPorCategoriaServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        try {
            req.setAttribute("jogos", new CategoriaDAO().listarJogosPorCategoria(Integer.parseInt(req.getParameter("idCategoria"))));
            req.getRequestDispatcher("listJogos.jsp").forward(req, resp);

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
