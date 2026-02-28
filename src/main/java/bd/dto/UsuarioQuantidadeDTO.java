package bd.dto;

public class UsuarioQuantidadeDTO {

    private String nome;
    private int quantidadeJogos;

    public UsuarioQuantidadeDTO(String nome, int quantidadeJogos) {
        this.nome = nome;
        this.quantidadeJogos = quantidadeJogos;
    }

    public String getNome() {
        return nome;
    }

    public int getQuantidadeJogos() {
        return quantidadeJogos;
    }
}