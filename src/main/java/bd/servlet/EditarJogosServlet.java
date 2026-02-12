package bd.servlet;

import java.io.IOException;
import java.time.LocalDate;

import bd.dao.JogosDAO;
import bd.model.Jogos;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/editarJogo")
public class EditarJogosServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            String id = req.getParameter("id");

            if (id != null) {
                JogosDAO dao = new JogosDAO();
                req.setAttribute("jogo", dao.buscar(Integer.parseInt(id)));
            }

            req.getRequestDispatcher("editarJogo.jsp").forward(req, resp);

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

        try {
            String id = req.getParameter("id");

            if (id != null && !id.isEmpty()) {

                Jogos jogo = new Jogos();
                jogo.setId(Integer.parseInt(id));
                jogo.setNome(req.getParameter("nome"));

                // Convertendo data
                String dataCompraStr = req.getParameter("data_compra");
                if (dataCompraStr != null && !dataCompraStr.isEmpty()) {
                    jogo.setDataCompra(LocalDate.parse(dataCompraStr));
                }

                jogo.setIdUsuario(Integer.parseInt(req.getParameter("id_usuario")));

                JogosDAO dao = new JogosDAO();
                dao.atualizar(jogo);
            }

            resp.sendRedirect("listarJogos");

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
