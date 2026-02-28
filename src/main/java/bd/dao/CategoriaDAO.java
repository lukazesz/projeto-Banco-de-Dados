package bd.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import bd.dto.CategoriaDTO;
import bd.dto.JogosDTO;
import bd.model.Jogos;
import bd.model.Categoria;
import bd.util.ConnectionFactory;

public class CategoriaDAO {

    public void salvar(Categoria categoria) throws Exception {
        String sql = "INSERT INTO categoria (nome) VALUES (?)";

        try (Connection c = ConnectionFactory.getConnection();
                PreparedStatement ps = c.prepareStatement(sql)) {

            ps.setString(1, categoria.getNome());

            ps.executeUpdate();
        }
    }

    public List<Categoria> listar() throws Exception {
        List<Categoria> lista = new ArrayList<>();
        String sql = "SELECT * FROM categoria";

        try (Connection c = ConnectionFactory.getConnection();
                Statement st = c.createStatement();
                ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                lista.add(new Categoria(
                        rs.getInt("id"),
                        rs.getString("nome")));
            }
        }
        return lista;
    }

    public List<Jogos> listarJogosPorCategoria(int id) throws Exception {
         String sql = "SELECT j.id, j.nome AS nome_jogo, j.data_compra, u.id AS id_usuario " +
                     "FROM jogos j " +
                     "INNER JOIN usuario u ON j.id_usuario = u.id " + 
                    "WHERE j.id_categoria=?";
                    List<Jogos> lista = new ArrayList<>();
        try (Connection c = ConnectionFactory.getConnection();
            PreparedStatement ps = c.prepareStatement(sql)) {
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    lista.add(new Jogos(
                            rs.getInt("id"),
                            rs.getString("nome_jogo"),
                            rs.getObject("data_compra", LocalDate.class),
                            rs.getInt("id_usuario")));
                }
                ;
                return lista;

        }

        
    }

    public void excluir(int id) throws Exception {
        String sql = "DELETE FROM categoria WHERE id=?";

        try (Connection c = ConnectionFactory.getConnection();
                PreparedStatement ps = c.prepareStatement(sql)) {

            ps.setInt(1, id);
            ps.executeUpdate();
        }
    }
}