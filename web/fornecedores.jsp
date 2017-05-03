<%@page import="cadastro.fatecpg.Fornecedores"%>
<%@page import="cadastro.fatecpg.FornecedoresDB"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de fornecedores</title>
    </head>
    <body>
 <%@include file="WEB-INF/menu.jspf"%>
 <script language="JavaScript" src="arquivo.js"></script>
 <script language="JavaScript" src="Mascaras.js"></script>
        <h2>Cadastro de Fornecedores</h2>
        <div class="borda">
        <div class="principal">
            <fieldset>
                <legend>Novo Fornecedor</legend>
                <form class="form-group" name="form2">
                      <table>
                <tr>
                    <td>Nome: <input class="form-control" type="text" name="nome" maxlength="60" onkeypress="Letras();"/></td>
                    <td>Nome da empresa: <input class="form-control" type="text" maxlength="40" name="empresa"/></td>
                    
                    <td>CNPJ: <input class="form-control" type="text" name="CNPJ" id="cnpj" size="18" maxlength="18" onkeypress="MascaraCNPJ(form2.cnpj); Numeros();" /></td>
                </tr><tr>
                    <td>Email: <input class="form-control" type="text" name="email" maxlength="45" /></td>
                    <td>Tel.: <input class="form-control" id="telefone" maxLength="15" size="15" type="text" name="telefone" onkeypress="MascaraTelefone(form2.telefone); Numeros(); "/></td>
                    <td>End.: <input class="form-control" type="text" name="endereco" maxlength="120" /></td><br/></tr>
                      <tr>
                          <td class="botão"><input class="form-control btn-primary" type="submit" name="incluir" value="Incluir"/></td></tr>
                    </table>
                </form>
            </fieldset>
            <%
                try{
                    if(request.getParameter("incluir")!=null){
                        String nome=request.getParameter("nome");
                        String CNPJ=request.getParameter("CNPJ");
                        String empresa=request.getParameter("empresa");
                        String email=request.getParameter("email");
                        String telefone=request.getParameter("telefone");
                        String endereco=request.getParameter("endereco");
                        Fornecedores c = new Fornecedores();
                        c.setFornecedores(nome, CNPJ, empresa, email, telefone, endereco);
                        FornecedoresDB.getFornecedores().add(c);
                        response.sendRedirect(request.getRequestURI());
                    }else if(request.getParameter("excluir")!=null){
                        String id=request.getParameter("id");
                        int i = Integer.parseInt(id);
                        FornecedoresDB.getFornecedores().remove(i);
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
                   
                    <th>CNPJ</th>
                    <th>Nome da empresa</th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>Endereço</th>
                    <th>Comandos</th>
                </tr>
                <%for(int i=0; i<FornecedoresDB.getFornecedores().size(); i++){%>
                <%Fornecedores c = FornecedoresDB.getFornecedores().get(i);%>
                <tr>
                    <td><%= i %></td>
                    <td><%= c.getNome() %></td>
                    <td><%= c.getCNPJ() %></td>
                    <td><%= c.getEmpresa() %></td>
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