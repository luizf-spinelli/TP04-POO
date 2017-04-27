package cadastro.fatecpg;

import java.util.ArrayList;

public class ClientesDB {
    private static ArrayList<Clientes> clientes;
    public static ArrayList<Clientes> getClientes(){
        if(clientes == null){
            clientes = new ArrayList<>();
            Clientes c1 = new Clientes();
            c1.setClientes("André", "11 111 111-1", "111 111 111-11", "andre@fatec.com", "13 9 9999-1111", "Rua 1");
            Clientes c2 = new Clientes();
            c2.setClientes("Jonatas", "22 222 222-2", "222 222 222-22", "jonatas@fatec.com", "13 9 9999-1112", "Rua 2");
            Clientes c3 = new Clientes();
            c3.setClientes("Luiz", "33 333 333-3", "333 333 333-33", "luiz@fatec.com", "13 9 9999-1113", "Rua 3");
            Clientes c4 = new Clientes();
            c4.setClientes("Peterson", "44 444 444-4", "444 444 444-44", "peterson@fatec.com", "13 9 9999-1114", "Rua 4");
            Clientes c5 = new Clientes();
            c5.setClientes("Rafael", "55 555 555-5", "555 555 555-55", "rafael@fatec.com", "13 9 9999-1115", "Rua 5");
            clientes.add(c1);
            clientes.add(c2);
            clientes.add(c3);
            clientes.add(c4);
            clientes.add(c5);
        }
        return clientes;
    }
}