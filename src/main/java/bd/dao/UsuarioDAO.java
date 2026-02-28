package bd.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import bd.dto.UsuarioQuantidadeDTO;
import bd.dto.UsuarioJogoDTO;
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
                        rs.getObject("data_nascimento", LocalDate.class),
                        rs.getString("email"),
                        rs.getString("telefone")
                ));
            }
        }

        return lista;
    }

    // GROUP BY + ORDER BY
    public List<UsuarioQuantidadeDTO> quantidadeJogosPorUsuario() throws Exception {

        List<UsuarioQuantidadeDTO> lista = new ArrayList<>();

        String sql = "SELECT u.nome, COUNT(j.id) AS quantidade_jogos " +
                     "FROM usuario u " +
                     "INNER JOIN jogos j ON u.id = j.id_usuario " +
                     "GROUP BY u.nome " +
                     "ORDER BY quantidade_jogos DESC";

        try (Connection c = ConnectionFactory.getConnection();
             Statement st = c.createStatement();
             ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                lista.add(new UsuarioQuantidadeDTO(
                        rs.getString("nome"),
                        rs.getInt("quantidade_jogos")
                ));
            }
        }

        return lista;
    }

    // LEFT JOIN
    public List<UsuarioJogoDTO> listarUsuariosComJogos() throws Exception {

        List<UsuarioJogoDTO> lista = new ArrayList<>();

        String sql = "SELECT u.nome AS nome_usuario, j.nome AS nome_jogo " +
                     "FROM usuario u " +
                     "LEFT JOIN jogos j ON u.id = j.id_usuario " +
                     "ORDER BY u.nome";

        try (Connection c = ConnectionFactory.getConnection();
             Statement st = c.createStatement();
             ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                lista.add(new UsuarioJogoDTO(
                        rs.getString("nome_usuario"),
                        rs.getString("nome_jogo")
                ));
            }
        }

        return lista;
    }

    // SUBCONSULTA
    public List<Usuario> usuariosAcimaDaMedia() throws Exception {

        List<Usuario> lista = new ArrayList<>();

        String sql = "SELECT * FROM usuario u " +
                     "WHERE (SELECT COUNT(*) FROM jogos j WHERE j.id_usuario = u.id) > " +
                     "(SELECT AVG(qtd) FROM (SELECT COUNT(*) AS qtd FROM jogos GROUP BY id_usuario) AS sub)";

        try (Connection c = ConnectionFactory.getConnection();
             Statement st = c.createStatement();
             ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                lista.add(new Usuario(
                        rs.getInt("id"),
                        rs.getString("nome"),
                        rs.getObject("data_nascimento", LocalDate.class),
                        rs.getString("email"),
                        rs.getString("telefone")
                ));
            }
        }

        return lista;
    }
}