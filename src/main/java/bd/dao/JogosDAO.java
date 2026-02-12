package bd.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import bd.dto.JogosDTO;
import bd.model.Jogos;
import bd.util.ConnectionFactory;

public class JogosDAO {

    public void salvar(Jogos jogos) throws Exception {
        String sql = "INSERT INTO jogos (nome, data_compra, id_usuario) VALUES (?, ?, ?)";

        try (Connection c = ConnectionFactory.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {

            ps.setString(1, jogos.getNome());
            ps.setDate(2, Date.valueOf(jogos.getDataCompra()));
            ps.setInt(3, jogos.getIdUsuario());

            ps.executeUpdate();
        }
    }

    public List<Jogos> listar() throws Exception {
        List<Jogos> lista = new ArrayList<>();
        String sql = "SELECT * FROM jogos";

        try (Connection c = ConnectionFactory.getConnection();
             Statement st = c.createStatement();
             ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                lista.add(new Jogos(
                        rs.getInt("id"),
                        rs.getString("nome"),
                        rs.getObject("data_compra", LocalDate.class),
                        rs.getInt("id_usuario")));
            }
        }
        return lista;
    }

    public List<JogosDTO> listarJogosComprados() throws Exception {
        List<JogosDTO> lista = new ArrayList<>();

        String sql = "SELECT j.id, j.nome AS nome_jogo, j.data_compra, u.nome AS nome_usuario " +
                     "FROM jogos j " +
                     "INNER JOIN usuario u ON j.id_usuario = u.id";

        try (Connection c = ConnectionFactory.getConnection();
             Statement st = c.createStatement();
             ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                lista.add(new JogosDTO(
                        rs.getInt("id"),
                        rs.getString("nome_jogo"),
                        rs.getObject("data_compra", LocalDate.class),
                        rs.getString("nome_usuario")));
            }
        }

        return lista;
    }

    public Jogos buscar(int id) throws Exception {
        String sql = "SELECT * FROM jogos WHERE id=?";

        try (Connection c = ConnectionFactory.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Jogos j = new Jogos();
                j.setId(rs.getInt("id"));
                j.setNome(rs.getString("nome"));
                j.setDataCompra(rs.getObject("data_compra", LocalDate.class));
                j.setIdUsuario(rs.getInt("id_usuario"));
                return j;
            }
        }

        return null;
    }

    public void atualizar(Jogos jogo) throws Exception {
        String sql = "UPDATE jogos SET nome=?, data_compra=?, id_usuario=? WHERE id=?";

        try (Connection c = ConnectionFactory.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {

            ps.setString(1, jogo.getNome());
            ps.setDate(2, Date.valueOf(jogo.getDataCompra()));
            ps.setInt(3, jogo.getIdUsuario());
            ps.setInt(4, jogo.getId());

            ps.executeUpdate();
        }
    }

    public void excluir(int id) throws Exception {
        String sql = "DELETE FROM jogos WHERE id=?";

        try (Connection c = ConnectionFactory.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {

            ps.setInt(1, id);
            ps.executeUpdate();
        }
    }
}
