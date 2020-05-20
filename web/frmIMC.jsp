
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="hold-transition layout-top-nav">
        
        <div class="wrapper">
        
            <%@include file="layout.jsp" %>

            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1 class="m-0 text-dark"> Calculadora IMC </h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">



                                </ol>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->

                <!-- Main content -->
                <div class="content">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">

                                <div class="card card-primary card-outline">
                                    <div class="card-body">
                                        
                                        <div class="row">
                                            
                                            <div class="col-lg-4">
                                                <div class="card">
                                                    <div class="card-body login-card-body">
                                                        

                                                        <form action="CalcularIMC_Controller" method="post">
                                                            <div class="input-group mb-3">
                                                                <input type="text" class="form-control" name="txttalla" placeholder="Ingrese su talla (cm)">
                                                                <div class="input-group-append">
                                                                    <div class="input-group-text">
                                                                        <span class="fas fa-text-height"></span>
                                                                        
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="input-group mb-3">
                                                                <input type="text" class="form-control" name="txtpeso" placeholder="Ingrese su peso (Kgr)">
                                                                <div class="input-group-append">
                                                                    <div class="input-group-text">
                                                                        <span class="fas fa-weight"></span>
                                                                        
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-8">

                                                                </div>
                                                                <!-- /.col -->
                                                                <div class="col-4">
                                                                    <button type="submit" class="btn btn-primary btn-block">Calcular</button>
                                                                </div>
                                                                <!-- /.col -->
                                                            </div>
                                                        </form>


                                                    </div>
                                                    <!-- /.login-card-body -->
                                                </div>
                                            </div>

                                            <div class="col-lg-8 card card-outline card-outline-primary">
                                                <h1>
                                                    Resultado
                                                </h1>
                                                
                                                <%
                                                    if(request.getAttribute("resultado") != null ){
                                                        String resultadoimc = request.getAttribute("resultado").toString();
                                                    
                                                %>
                                                <div class="alert alert-info">
                                                    <%=resultadoimc%>
                                                </div>     
                                                   
                                                <% } %>
                                                    
                                               
                                            </div>
                                            
                                        </div>
                                        
                                        
                                    </div>
                                    
                                    
                                    <div class="card-footer">

                                        <p class="card-text">
                                            &nbsp;
                                        </p>
                                        
                                    </div>
                                    
                                </div><!-- /.card -->
                            </div>
                            <!-- /.col-md-6 -->
                            
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content -->
            </div>


        </div>
        
    </body>
</html>
