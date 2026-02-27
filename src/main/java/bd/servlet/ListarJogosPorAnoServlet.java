package bd.servlet;

import java.io.IOException;
import java.util.List;

import bd.dao.JogosDAO;
import bd.dto.JogosAnoDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/listarJogosPorAno")
public class ListarJogosPorAnoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            JogosDAO dao = new JogosDAO();
            List<JogosAnoDTO> lista = dao.listarJogosPorAno();

            request.setAttribute("lista", lista);
            request.getRequestDispatcher("listarJogosPorAno.jsp")
                   .forward(request, response);

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}