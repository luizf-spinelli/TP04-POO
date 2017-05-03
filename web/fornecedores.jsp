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
                <legend>Adicione ou aletere um fornecedor</legend>
                <form id="form-fornecedor" class="form-group" name="form2">
                <div class="container">
                    <div class="row">
                        <input class="form-control txt-2" placeholder="Índice: " type="text" name="indice" id="indice" maxlength="2" onkeypress="Numeros();"/>
                        <span class="desc">Preencha somente se for alterar</span><br/><br/>
                        
                        <input class="form-control txt-3 col-md-4" placeholder="Nome:" type="text" name="nome" maxlength="60" onkeypress="Letras();"/>
                        <input class="form-control txt-3 col-md-4" placeholder="Empresa:" type="text" maxlength="40" name="empresa"/>
                        <input class="form-control txt-2 col-md-4"placeholder="CNPJ:" type="text" name="CNPJ" id="cnpj" maxlength="18" onkeypress="MascaraCNPJ(form2.cnpj); Numeros();" />
                    </div>
                    <div class="row">
                        <input class="form-control txt-3 col-md-4" placeholder="E-mail:" type="text" name="email" maxlength="45" />
                        <input class="form-control txt-2 col-md-4" placeholder="Tel.:" id="telefone" maxLength="15" type="text" name="telefone" onkeypress="MascaraTelefone(form2.telefone); Numeros(); "/>
                        <input class="form-control txt-4 col-md-4" placeholder="Endereço:" type="text" name="endereco" maxlength="120" />
                    </div>

                    <input class="btn btn-primary col-md-2 col-md-offset-3" type="submit" name="incluir" value="Incluir"/>
                    <input class="btn btn-primary col-md-2 col-md-offset-1" type="submit" name="alterar" value="Alterar"/>
                </div>
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
                    }else if(request.getParameter("alterar")!=null){
                        
                        String indice = request.getParameter("indice");
                        int i = Integer.parseInt(indice);
                        
                        String nome=request.getParameter("nome");
                        String CNPJ=request.getParameter("CNPJ");
                        String empresa=request.getParameter("empresa");
                        String email=request.getParameter("email");
                        String telefone=request.getParameter("telefone");
                        String endereco=request.getParameter("endereco");
                        Fornecedores c = new Fornecedores();
                        c.setFornecedores(nome, CNPJ, empresa, email, telefone, endereco);
                        FornecedoresDB.getFornecedores().set(i, c);
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
                            <input class="form-control btn-danger" type="submit" name="excluir" value="Excluir"/><br/>
                            
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