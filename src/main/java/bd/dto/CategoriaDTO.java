package bd.dto;

public class CategoriaDTO {

    private int id;
    private String nomeCategoria;

    public CategoriaDTO(int id, String nomeCategoria) {
        this.id = id;
        this.nomeCategoria = nomeCategoria;
    }

    public int getId() {
        return id;
    }

    public String getNomeCategoria() {
        return nomeCategoria;
    }

}
