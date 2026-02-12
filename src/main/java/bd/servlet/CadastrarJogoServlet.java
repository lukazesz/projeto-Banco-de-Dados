package bd.servlet;

import java.io.IOException;
import java.time.LocalDate;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import bd.dao.JogosDAO;
import bd.dao.UsuarioDAO;
import bd.model.Jogos;

@WebServlet("/cadastrarJogo")
public class CadastrarJogoServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

        try {
            Jogos jogo = new Jogos();

            jogo.setNome(req.getParameter("nome"));

            String dataCompraString = req.getParameter("dataCompra");
            if (dataCompraString != null && !dataCompraString.isEmpty()) {
                jogo.setDataCompra(LocalDate.parse(dataCompraString));
            }

            String idUsuarioString = req.getParameter("idUsuario");
            if (idUsuarioString != null && !idUsuarioString.isEmpty()) {
                jogo.setIdUsuario(Integer.parseInt(idUsuarioString));
            }

            JogosDAO jogosDAO = new JogosDAO();
            jogosDAO.salvar(jogo);

            resp.sendRedirect("listarJogos");

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        try {
            req.setAttribute("usuarios", new UsuarioDAO().listar());
            req.getRequestDispatcher("form.jsp").forward(req, resp);

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
