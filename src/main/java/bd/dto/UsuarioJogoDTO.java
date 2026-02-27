package bd.dto;

public class UsuarioJogoDTO {

    private String nomeUsuario;
    private String nomeJogo;

    public UsuarioJogoDTO(String nomeUsuario, String nomeJogo) {
        this.nomeUsuario = nomeUsuario;
        this.nomeJogo = nomeJogo;
    }

    public String getNomeUsuario() {
        return nomeUsuario;
    }

    public String getNomeJogo() {
        return nomeJogo;
    }
}