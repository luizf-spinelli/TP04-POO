<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro FatecPG - Grupo 06</title>
    </head>
    <body>
        <%@include file="WEB-INF/menu.jspf"%>       
        
        <div class="borda">
            <div class="principal" style="text-align:center">
                <h1>Cadastro FatecPG - Grupo 06</h1><br/>
                <hr>             
            <br/><br/>
                <div class="row">
                    <div id="andre" class="col-md-4">
                        <img src="resource/andre.jpg" class="img-responsive img-circle img col-md-offset-3 col-sm-offset-5"/>
                        <h4>André Tripode Colognesi</h4>
                        <span class="desc">Responsável pela estilização das páginas, menu superior e rodapé.</span><br/>            
                    </div>
                    <div id="jonatas" class="col-md-4">
                        <img src="resource/jonatas.jpg" class="img-responsive img-circle img col-md-offset-3 col-sm-offset-5"/>
                        <h4>Jonatas Feijó Lopes</h4>
                        <span class="desc">Responsável pela estilização e padronização das tabelas, botões e formulários.</span><br/>
                    </div>
                    <div id="luiz" class="col-md-4">
                        <img src="resource/luiz.jpg" class="img-responsive img-circle img col-md-offset-3 col-sm-offset-5"/>
                        <h4>Luiz Fernando Spinelli</h4>
                        <span class="desc">Responsável pela página de cadastro de clientes.</span><br/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                    <div id="peterson" class="col-md-6">
                        <img src="resource/peterson.jpg" class="img-responsive img-circle img col-md-offset-4 col-sm-offset-5"/>
                        <h4>Peterson Petravicius</h4>
                        <span class="desc">Responsável pelas máscaras, função alterar e tratamentos na entrada de dados.</span><br/>
                    </div>
                    <div id="rafael" class="col-md-6">
                        <img src="resource/rafael.jpeg" class="img-responsive img-circle img col-md-offset-4 col-sm-offset-5"/>
                        <h4>Rafael Araujo</h4>
                        <span class="desc">Responsável pela página de cadastro de fornecedores.</span><br/>
                    </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/rodape.jspf"%>   
    </body>
</html>
