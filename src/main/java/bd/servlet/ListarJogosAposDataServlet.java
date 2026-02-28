package bd.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import bd.dao.JogosDAO;
import bd.dto.JogosDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/listarJogosAposData")
public class ListarJogosAposDataServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String dataParam = request.getParameter("data");

        try {
            LocalDate data = LocalDate.parse(dataParam);

            JogosDAO dao = new JogosDAO();
            List<JogosDTO> lista = dao.listarAposData(data);

            request.setAttribute("lista", lista);
            request.getRequestDispatcher("listarJogosAposData.jsp")
                   .forward(request, response);

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}