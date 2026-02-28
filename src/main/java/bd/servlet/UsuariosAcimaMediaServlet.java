package bd.servlet;

import java.io.IOException;
import java.util.List;

import bd.dao.UsuarioDAO;
import bd.model.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/usuariosAcimaMedia")
public class UsuariosAcimaMediaServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            UsuarioDAO dao = new UsuarioDAO();
            List<Usuario> lista = dao.usuariosAcimaDaMedia();

            request.setAttribute("lista", lista);
            request.getRequestDispatcher("usuariosAcimaMedia.jsp")
                   .forward(request, response);

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}