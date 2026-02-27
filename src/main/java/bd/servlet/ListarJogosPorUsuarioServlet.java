package bd.servlet;

import java.io.IOException;
import java.util.List;

import bd.dao.JogosDAO;
import bd.dto.JogosDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/listarJogosPorUsuario")
public class ListarJogosPorUsuarioServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nome = request.getParameter("nome");

        try {
            JogosDAO dao = new JogosDAO();
            List<JogosDTO> lista = dao.listarPorUsuario(nome);

            request.setAttribute("lista", lista);
            request.getRequestDispatcher("listarJogosPorUsuario.jsp")
                   .forward(request, response);

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}