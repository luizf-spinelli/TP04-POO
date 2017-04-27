<%@page import="cadastro.fatecpg.Clientes"%>
<%@page import="cadastro.fatecpg.ClientesDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de clientes</title>
    </head>
    <body>        
        <h2>Cadastro de clientes</h2>
        <div>
            <fieldset>
                <legend>Novo cliente</legend>
                <form>
                    <table>
                <tr>
                    <td>Nome: <input type="text" name="nome"/></td>
                    <td>RG: <input type="text" name="rg"/></td>
                    <td>CPF: <input type="text" name="cpf"/></td>
                </tr>
                    <td>Email: <input type="text" name="email"/></td>
                    <td>Tel.: <input type="text" name="telefone"/></td>
                    <td>End.: <input type="text" name="endereco"/></td>
                    <td><input type="submit" name="incluir" value="Incluir"/></td>
                    </table>
                </form>
            </fieldset>
            <%
                try{
                    if(request.getParameter("incluir")!=null){
                        String nome=request.getParameter("nome");
                        String rg=request.getParameter("rg");
                        String cpf=request.getParameter("cpf");
                        String email=request.getParameter("email");
                        String telefone=request.getParameter("telefone");
                        String endereco=request.getParameter("endereco");
                        Clientes c = new Clientes();
                        c.setClientes(nome, rg, cpf, email, telefone, endereco);
                        ClientesDB.getClientes().add(c);
                        response.sendRedirect(request.getRequestURI());
                    }else if(request.getParameter("excluir")!=null){
                        String id=request.getParameter("id");
                        int i = Integer.parseInt(id);
                        ClientesDB.getClientes().remove(i);
                        response.sendRedirect(request.getRequestURI());
                    }
                }catch(Exception ex){%>
                <div style="color: red;">Erro: <%=ex.getMessage()%></div>
              <%}
            %>
            <br/>
        </div>
        <div>
            <table border="1">
                <tr>
                    <th>Índice</th>
                    <th>Nome</th>
                    <th>RG</th>
                    <th>CPF</th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>Endereço</th>
                    <th>Comandos</th>
                </tr>
                <%for(int i=0; i<ClientesDB.getClientes().size(); i++){%>
                <%Clientes c = ClientesDB.getClientes().get(i);%>
                <tr>
                    <td><%= i %></td>
                    <td><%= c.getNome() %></td>
                    <td><%= c.getRg() %></td>
                    <td><%= c.getCpf() %></td>
                    <td><%= c.getEmail() %></td>
                    <td><%= c.getTelefone() %></td>
                    <td><%= c.getEndereco() %></td>
                    <td>
                        <form>
                            <input type="hidden" name="id" value="<%=i%>"/>
                            <input type="submit" name="excluir" value="Excluir"/>
                        </form>
                    </td>
                </tr>
                <%}%>
            </table>
        </div>
    </body>
</html>