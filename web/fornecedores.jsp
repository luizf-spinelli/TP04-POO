<%@page import="cadastro.fatecpg.Clientes"%>
<%@page import="cadastro.fatecpg.ClientesDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de fornecedores</title>
    </head>
    <body>
 <%@include file="WEB-INF/menu.jspf"%>        
        <h2>Cadastro de Fornecedores</h2>
        <div class="borda">
        <div class="principal">
            <fieldset>
                <legend>Novo Fornecedor</legend>
                <form class="form-group">
                      <table>
                <tr>
                    <td>Nome: <input class="form-control" type="text" name="nome"/></td>
                    <td>RG: <input class="form-control" type="text" name="rg"/></td>
                    <td>CPF: <input class="form-control" type="text" name="cpf"/></td>
                </tr>
                    <td>Email: <input class="form-control" type="text" name="email"/></td>
                    <td>Tel.: <input class="form-control" type="text" name="telefone"/></td>
                    <td>End.: <input class="form-control" type="text" name="endereco"/></td>
                    <td><input class="form-control" type="submit" name="incluir" value="Incluir"/></td>
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
        
        
            <table class="table table-bordered">
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
                            <input class="form-control" type="submit" name="excluir" value="Excluir"/>
                        </form>
                    </td>
                </tr>
                <%}%>
            </table>
        </div>
        </div>
            <%@include file="WEB-INF/rodape.jspf"%>   
    </body>
</html>