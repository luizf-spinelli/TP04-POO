package cadastro.fatecpg;

public class Fornecedores {
    private String nome;
    private String CNPJ;
    private String empresa;
    private String email;
    private String telefone;
    private String endereco;
    
        public void setFornecedores(String nome, String CNPJ, String empresa, String email, String telefone, String endereco){
        this.setNome(nome);
        this.setEmpresa(empresa);
        this.setCNPJ(CNPJ);
        this.setEmail(email);
        this.setTelefone(telefone);
        this.setEndereco(endereco);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getEmpresa(){
        return empresa;
    }
    public void setEmpresa(String empresa){
        this.empresa = empresa;
    }

    public String getCNPJ() {
        return CNPJ;
    }

    public void setCNPJ(String CNPJ) {
        this.CNPJ = CNPJ;
    }

   

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
}
