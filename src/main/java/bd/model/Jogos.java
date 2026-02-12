package bd.model;

import java.time.LocalDate;

public class Jogos {

    private int id;
    private String nome;
    private LocalDate dataCompra;
    private int idUsuario;

    public Jogos() {
    }

    public Jogos(int id, String nome, LocalDate dataCompra, int idUsuario) {
        this.id = id;
        this.nome = nome;
        this.dataCompra = dataCompra;
        this.idUsuario = idUsuario;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    } 

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public LocalDate getDataCompra() {
        return dataCompra;
    }

    public void setDataCompra(LocalDate dataCompra) {
        this.dataCompra = dataCompra;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
}
