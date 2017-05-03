/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cadastro.fatecpg;



import java.util.ArrayList;

public class FornecedoresDB {
    private static ArrayList<Fornecedores> fornecedores;
    public static ArrayList<Fornecedores> getFornecedores(){
        if(fornecedores == null){
            fornecedores = new ArrayList<>();
            Fornecedores c1 = new Fornecedores();
            c1.setFornecedores("André", "11.111.111/1111-11", "Empresa x", "andre@fatec.com", "(13) 99999-1111", "Rua 1");
            Fornecedores c2 = new Fornecedores();
            c2.setFornecedores("Jonatas", "22.222.222/2222-22", "Empresa y", "jonatas@fatec.com", "(13) 99999-1112", "Rua 2");
            Fornecedores c3 = new Fornecedores();
            c3.setFornecedores("Luiz", "33.333.333/3333-33", "Empresa z", "luiz@fatec.com", "(13) 99999-1113", "Rua 3");
            Fornecedores c4 = new Fornecedores();
            c4.setFornecedores("Peterson", "44.444.444/4444-44", "Empresa p", "peterson@fatec.com", "(13) 99999-1114", "Rua 4");
            Fornecedores c5 = new Fornecedores();
            c5.setFornecedores("Rafael", "55.555.555/5555-55","Empresa f", "rafael@fatec.com", "(13) 99999-1115", "Rua 5");
            fornecedores.add(c1);
            fornecedores.add(c2);
            fornecedores.add(c3);
            fornecedores.add(c4);
            fornecedores.add(c5);
        }
        return fornecedores;
    }
}