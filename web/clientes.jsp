<%@page import="cadastro.fatecpg.Clientes"%>
<%@page import="cadastro.fatecpg.ClientesDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Clientes</title>
    </head>
    <body>
 <%@include file="WEB-INF/menu.jspf"%>   
 <%@include file="Mascaras.js"%>
 <script language="JavaScript" src="Mascaras.js"></script>
        <h2>Cadastro de Clientes</h2>
        <div class="borda">
        <div class="principal">
            <fieldset>
                
               
                
                <legend>Novo Cliente</legend>
                <form class="form-group" name ="form1">
                      <table>
                <tr>
                    <td>Nome: <input class="form-control" type="text" name="nome"/></td>
                    <td>RG: <input class="form-control" type="text" name="rg" /></td>
                    <td>CPF: <input class="form-control" type="text" name="cpf"/></td>
                </tr><tr>
                    <td>Email: <input class="form-control" type="text" name="email"/></td>
                    <td>Tel.: <input class="form-control" id="tel" maxLength="15" size="15" type="text" name="tel" onkeypress="MascaraTelefone(form1.tel); Numeros(); "   /></td>
                    <td>End.: <input class="form-control" type="text" name="endereco"/></td><br/></tr>
                      <tr>
                          <td class="botão"><input class="form-control btn-primary" type="submit" name="incluir" value="Incluir"/></td></tr>
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
        
        
            <table class="table table-bordered table-responsive">
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
                            <input class="form-control btn-danger" type="submit" name="excluir" value="Excluir"/><br />
                            <input class="form-control btn-primary" type="submit" name="alterar" value="Alterar"/>
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