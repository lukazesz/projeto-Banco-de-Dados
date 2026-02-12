package bd.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bd.model.Usuario;
import bd.util.ConnectionFactory;

public class UsuarioDAO {

    public List<Usuario> listar() throws Exception {
        List<Usuario> lista = new ArrayList<>();
        String sql = "SELECT * FROM usuario";

        try (Connection c = ConnectionFactory.getConnection();
             Statement st = c.createStatement();
             ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                lista.add(new Usuario(
                        rs.getInt("id"),
                        rs.getString("nome"),
                        rs.getObject("data_nascimento", java.time.LocalDate.class),
                        rs.getString("email"),
                        rs.getString("telefone")
                ));
            }
        }

        return lista;
    }
}
