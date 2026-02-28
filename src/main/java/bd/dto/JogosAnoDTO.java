package bd.dto;

public class JogosAnoDTO {

    private int ano;
    private int totalJogos;

    public JogosAnoDTO(int ano, int totalJogos) {
        this.ano = ano;
        this.totalJogos = totalJogos;
    }

    public int getAno() {
        return ano;
    }

    public int getTotalJogos() {
        return totalJogos;
    }
}