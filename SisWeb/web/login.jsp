<%-- 
    Document   : login
    Created on : 13 oct. 2021, 23:33:38
    Author     : Asteror
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="css/layout/nav.css">
    <link rel="stylesheet" href="css/layout/footer.css">
    <link rel="stylesheet" href="css/productos.css">
        <!-- Iconos -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/fire.png" type="image/x-icon">
        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet"> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

        <title>SisWeb | DRONNVELS.A.C</title>
    </head>
    <body>
 </head>
<body>
    <header>
        <nav>
            <section class="cont_header">
                <div class="header">
                    <div class="cont_header-info">                    
                        <span><i class="far fa-envelope"></i>ventas@dronnvels.com</span>
                        <span><i class="fab fa-whatsapp"></i> 955 373 365</span>
                    </div>
                    <div class="cont_header-user">
                        <a href="#">Login</a>
                        <span> | </span>
                        <a href="#">Registrar</a>
                        <span> | </span>
                        <a href="login.jsp">Intranet</a>
                        <a href=""><i class="fab fa-facebook-f"></i></a>
                        <a href=""><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </section>      
            <section class="contenedor nav">
                <div class="logo">
                    
                </div>                    
                <div class="enlaces-header">
                    <a class="enlaces" href="index.html">Home</a>     
                    <a class="enlaces" href="Nuestrapropuesta.html">Nuestra Propuesta</a>  
                    <a class="enlaces" href="productos.html">Productos</a>                
                    <a class="enlaces" href="contacto.html">Contacto</a>                    
                </div>
                <div class="menu">
                    <i class="fas fa-bars"></i>
                </div>
            </section>
        </nav>   
        <section class="content-header">   
            <img src="./img/contacto/white-gray-satin-texture-that-260nw-1714645717.jpg" alt="">         
                    
        </section>                   
    </header>           
        <h2 align="center">Login de Empleados</h2>
        <div class="container">
            <form action="ServletLogin" method="post">
                <table class="table">
                    <tr>
                        <td>Codigo de Usuario: </td>
                        <td><input type="text" name="txtUsu" placeholder="Usuario" 
                                   class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td><input type="password" name="txtPas" placeholder="*****" 
                                   class="form-control"></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" name="btn" value="Iniciar Sesion" 
                                               class="form-control btn btn-primary"></td>
                    </tr>
                </table>           
            </form>
            <%
                if (request.getAttribute("msg")!= null) {
                    String msg=request.getAttribute("msg").toString();
            %>
            <div class="alert alert-danger" role="alert">
                <%=msg%>
            </div>
            <%
                }
            %>
        </div>
    </body>
</html>
