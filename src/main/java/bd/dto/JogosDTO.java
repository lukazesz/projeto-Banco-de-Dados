package bd.dto;

import java.time.LocalDate;

public class JogosDTO {

    private int id;
    private String nomeJogo;
    private LocalDate dataCompra;
    private String nomeUsuario;

    public JogosDTO(int id, String nomeJogo, LocalDate dataCompra, String nomeUsuario) {
        this.id = id;
        this.nomeJogo = nomeJogo;
        this.dataCompra = dataCompra;
        this.nomeUsuario = nomeUsuario;
    }

    public int getId() {
        return id;
    }

    public String getNomeJogo() {
        return nomeJogo;
    }

    public LocalDate getDataCompra() {
        return dataCompra;
    }

    public String getNomeUsuario() {
        return nomeUsuario;
    }
}
