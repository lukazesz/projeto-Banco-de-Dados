package bd.servlet;

import java.io.IOException;
import java.util.List;

import bd.dao.UsuarioDAO;
import bd.dto.UsuarioQuantidadeDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/quantidadeJogosPorUsuario")
public class QuantidadeJogosPorUsuarioServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            UsuarioDAO dao = new UsuarioDAO();
            List<UsuarioQuantidadeDTO> lista = dao.quantidadeJogosPorUsuario();

            request.setAttribute("lista", lista);
            request.getRequestDispatcher("quantidadeJogosPorUsuario.jsp")
                   .forward(request, response);

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}