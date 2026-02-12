package bd.servlet;

import java.io.IOException;

import bd.dao.JogosDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/excluirJogo")
public class ExcluirJogoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            String id = req.getParameter("id");

            if (id != null) {
                req.setAttribute("jogo",
                        new JogosDAO().buscar(Integer.parseInt(id)));
            }

            req.getRequestDispatcher("excluirJogo.jsp").forward(req, resp);

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

        try {
            String id = req.getParameter("id");

            if (id != null && !id.isEmpty()) {
                JogosDAO dao = new JogosDAO();
                dao.excluir(Integer.parseInt(id));
            }

            resp.sendRedirect("listarJogos");

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
