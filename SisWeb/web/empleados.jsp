<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%@page import="Beans.UsuarioBeans" %>
<%@page import="java.util.*" %>
<%
    String usuario = "";
    HttpSession sesionOk = request.getSession();
    usuario = (String) sesionOk.getAttribute("Usuarios");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="shortcut icon" href="./imgs/icono.png" type="image/x-icon" />
        <!-- fonts google -->
        <!-- Roboto -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400;500;700&display=swap"
            rel="stylesheet"
            />
        <!-- Rubik -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;700;800;900&display=swap"
            rel="stylesheet"
            />
        <!-- boostrap -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
            crossorigin="anonymous"
            />
        <!-- custom css -->
        <link rel="stylesheet" href="./css/styles.css" />
        <title>Dashboard - SB Admin</title>
        <link href="css/styles-dash.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">DRONNVELS.A.C</a>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">

            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="button mx-2" href="ServletLogin" type="submit">Cerrar Sesión</a>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="dash.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Inicio
                            </a>
                            <div class="sb-sidenav-menu-heading">Logistica</div>
                            <a class="nav-link" href="#">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Ventas
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link" href="#">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Productos
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link" href="#">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Clientes
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link" href="#">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Empleados
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Bienvenido: </div>
                        <%=usuario%>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>

                    <div id="navbar-desplegar" onclick="quitarNavbar()" class=" d-lg-none">
                        <div class="btn-logo">
                            <svg width="19" height="16" viewBox="0 0 19 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path id="Subtract" fill-rule="evenodd" clip-rule="evenodd" d="M1.75453 1.12215C1.88109 0.954967 2.00727 0.77932 2.11206 0.626207C2.94463 1.29742 4.83997 2.4611 5.79641 1.77245C4.91829 1.72456 3.02811 1.30312 2.49126 0.00057892C2.49212 0.000195897 2.49291 0 2.49361 0C2.51001 0 3.39043 0.15858 4.45017 0.352308C6.79276 0.780709 8.16461 1.09949 9.50836 1.52769C11.463 2.15043 12.2363 2.60158 13.6834 3.96348C14.0754 4.33245 14.8125 4.91333 15.3212 5.25447C17.3406 6.60844 18.7643 7.93427 18.8556 8.54604C18.9031 8.86381 18.8715 8.94294 18.6245 9.12519C18.4435 9.25868 18.2393 9.59037 18.0694 10.027C17.6763 11.0367 17.641 11.0845 16.5436 12.0911C15.5708 12.9832 15.262 13.204 14.778 13.3529C14.567 13.4178 14.5489 13.3914 14.5489 13.0209C14.5489 12.7143 14.6214 12.5411 14.8532 12.2935C15.0205 12.1148 15.2102 11.7928 15.2748 11.5777C15.3766 11.2388 15.3621 11.113 15.1658 10.6306C14.5625 9.14754 12.7608 8.02194 10.9996 8.02773C10.1593 8.03047 9.59043 8.27144 9.19106 8.79371C8.92324 9.14389 8.89737 9.25025 8.89737 9.99997C8.89737 10.7281 8.93668 10.9018 9.24023 11.5177C9.64938 12.3474 10.6569 13.419 11.303 13.7115C11.7938 13.9337 12.5095 13.9814 12.6875 13.8039C12.7716 13.7199 12.8308 13.7931 12.9129 14.0832C13.0211 14.4645 13.0132 14.4859 12.6562 14.7898C12.2891 15.1022 11.3562 15.6098 10.6794 15.8653C10.4748 15.9425 9.91089 15.9999 9.35561 16C8.5034 16.0002 8.32764 15.968 7.87908 15.7299C7.08837 15.3101 6.47811 14.5751 6.34858 13.8865L6.27984 13.521L6.97656 13.4908C7.50944 13.4676 7.68041 13.4234 7.70342 13.3027C7.76992 12.9545 6.51049 11.9014 5.27652 11.2733C4.82969 11.0459 4.36351 10.6129 3.71282 9.82057C3.59127 9.67263 3.46929 9.53992 3.37749 9.45274C2.69001 6.36929 4.95236 4.62207 6.23096 4.11976C2.57313 4.57699 2.62149 8.13429 3.10866 9.88588C3.05556 9.95437 2.92268 9.95568 2.59035 9.95568C2.10014 9.95568 1.95901 10.0087 1.3579 10.4193C0.984598 10.6743 0.66587 10.8686 0.649783 10.8511C0.633591 10.8335 0.494796 10.3392 0.341338 9.7525C0.107539 8.85893 0.0549948 8.41377 0.01752 7.00961C-0.0236185 5.47095 -0.00651107 5.25315 0.225659 4.3549C0.529826 3.17799 1.08205 2.01044 1.75453 1.12215ZM12.1038 3.75827C12.3564 3.9203 12.7465 4.24234 12.9706 4.47396L13.3779 4.89505L12.9718 4.72834C12.3673 4.48026 11.6977 4.02535 11.2395 3.55154L10.8321 3.13045L11.2382 3.29716C11.4616 3.38879 11.851 3.59634 12.1038 3.75827Z" fill="white"/>
                            </svg>
                        </div>
                        <button
                            type="button"
                            class="btn-close btn-close-white"
                            aria-label="Close"
                            onclick=""
                            ></button>
                    </div>
                    <!-- \navbar -->
                    <!-- seccion datos -->
                    <section class="container_datos col-12 col-lg-10 offset-lg-2 h-100 px-3 px-lg-5">
                        <form action="ServletCRUDempleados" class="container_datos-input_buscar pt-3 mb-2">
                            <table>
                                <div class="col-12 form-floating position-relative">
                                    <input
                                        placeholder="Id empleado:"
                                        type="search"
                                        required
                                        class="form-control"
                                        name="txtIdU"
                                        aria-label="Sizing example input"
                                        aria-describedby="inputGroup-sizing"
                                        />
                                    <label for="floatingInput">Ingresa el id del empleado</label>
                                    <div class="container_datos-input_buscar-group_buttons d-flex mt-2 pt-1 position-absolute top-0 end-0">
                                        <input type="submit" name="btn" value="Buscar"
                                               class="button mx-2">
                                    </div>
                                </div>
                            </table>
                            <input type="hidden" name="op" value="consultaId">
                        </form>
                        <div class="container_datos-forms">
                            <!-- CRUD -->
                            <div class="container_datos-forms-crud d-flex justify-content-between position-relative "
                                 role="group"
                                 aria-label="Basic radio toggle button group"
                                 >
                                <!-- radio botones -->
                                <input
                                    type="radio"
                                    class="btn-check"
                                    name="crud"
                                    id="btnradio1"
                                    autocomplete="off"
                                    />
                                <label
                                    class="
                                    btn
                                    fw-bolder
                                    shadow-sm
                                    text-dark
                                    w-100
                                    btn-outline-primary--agregar
                                    "
                                    for="btnradio1"
                                    >Agregar</label
                                >
                                <input
                                    type="radio"
                                    class="btn-check"
                                    name="crud"
                                    id="btnradio2"
                                    autocomplete="off"
                                    />
                                <label
                                    class="btn fw-bolder shadow-sm w-100 btn-outline--secondary mx-2"
                                    for="btnradio2"
                                    >Actualizar</label
                                >
                                <input
                                    type="radio"
                                    class="btn-check"
                                    name="crud"
                                    id="btnradio3"
                                    autocomplete="off"
                                    />
                                <label
                                    class="btn fw-bolder shadow-sm w-100 btn-outline--danger"
                                    for="btnradio3"
                                    >Eliminar</label
                                >
                                <!-- /radio botones -->
                                <!-- Formularios -->
                                <div
                                    class="
                                    d-none
                                    shadow
                                    rounded
                                    sec1
                                    position-absolute
                                    w-100
                                    bg-light
                                    pt-3
                                    pb-2
                                    mt-2
                                    "
                                    >
                                    <button
                                        type="button"
                                        class="btn-close d-lg-none position-absolute end-0 top-0 mt-2 me-2"
                                        aria-label="Close"
                                        onclick="quitarChecked()"
                                        ></button>
                                    <h3 class="text-center">Agregar empleado</h3>
                                    <div>
                                        <form action="ServletCRUDempleados">
                                            <table class="table">
                                                <div class="row px-3 g-1">
                                                    <div class="col-6 form-floating">
                                                        <input
                                                            placeholder="Id empleado"
                                                            type="text"
                                                            required
                                                            class="form-control"
                                                            name="txtIdU"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            />
                                                        <label for="floatingInput">Id empleado</label>
                                                    </div>
                                                    <div class="col-6 form-floating">
                                                        <select
                                                            class="form-select form-control"
                                                            aria-label="Default select example"
                                                            name="txtPerfil"
                                                            required
                                                            >
                                                            <option selected>Seleccione</option>
                                                            <option value="Admin">Admin</option>
                                                            <option value="Vendedor">Vendedor</option>
                                                        </select>
                                                        <label for="floatingInput">Tipo empleado</label>
                                                    </div>
                                                    <div class="col-12 my-2 form-floating">
                                                        <input
                                                            placeholder="Nombre"
                                                            type="text"
                                                            required
                                                            class="form-control"
                                                            name="txtNom"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            />
                                                        <label for="floatingInput">Nombre</label>
                                                    </div>
                                                    <div class="col-6 form-floating">
                                                        <input
                                                            placeholder="Telefono"
                                                            type="number"
                                                            required
                                                            class="form-control"
                                                            name="txtTel"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            maxlength="9"
                                                            />
                                                        <label for="floatingInput">Telefono</label>
                                                    </div>
                                                    <div class="col-6 form-floating">
                                                        <input
                                                            placeholder="dni"
                                                            type="text"
                                                            required
                                                            class="form-control"
                                                            name="txtDNI"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            maxlength="8"
                                                            />
                                                        <label for="floatingInput">DNI</label>
                                                    </div>
                                                    <div class="col-12 my-2 form-floating">
                                                        <input
                                                            placeholder="Direción"
                                                            type="text"
                                                            required
                                                            class="form-control"
                                                            name="txtDir"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            />
                                                        <label for="floatingInput">Dirección</label>
                                                    </div>
                                                    <div class="col-12 my-2 form-floating">
                                                        <input
                                                            placeholder="Contraseña"
                                                            type="password"
                                                            required
                                                            class="form-control"
                                                            name="txtPas"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            />
                                                        <label for="floatingInput">Contraseña</label>
                                                    </div>
                                                </div>
                                                <input type="submit" name="btn" value="grabar datos" class="btn btn btn-primary w-75 btn-lg my-2">
                                            </table>
                                            <input type="hidden" name="op" value="insertar">
                                        </form>
                                    </div>
                                </div>
                                <div
                                    class="
                                    d-none
                                    shadow
                                    rounded
                                    sec2
                                    position-absolute
                                    w-100
                                    bg-light
                                    pt-3
                                    pb-2
                                    mt-2
                                    "
                                    >
                                    <button
                                        type="button"
                                        class="btn-close d-lg-none position-absolute end-0 top-0 mt-2 me-2"
                                        aria-label="Close"
                                        onclick="quitarChecked()"
                                        ></button>
                                    <h3 class="text-center">Actualizar empleado</h3>
                                    <div>
                                        <form action="ServletCRUDempleados">
                                            <table class="table">
                                                <div class="row px-3 g-1">
                                                    <div class="col-6 form-floating">
                                                        <input
                                                            placeholder="Id empleado"
                                                            type="text"
                                                            required
                                                            class="form-control"
                                                            name="txtIdU"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            />
                                                        <label for="floatingInput">Id empleado</label>
                                                    </div>
                                                    <div class="col-6 form-floating">
                                                        <select
                                                            class="form-select form-control"
                                                            aria-label="Default select example"
                                                            name="txtPerfil"
                                                            required
                                                            >
                                                            <option selected>Seleccione</option>
                                                            <option value="Admin">Admin</option>
                                                            <option value="Vendedor">Vendedor</option>
                                                        </select>
                                                        <label for="floatingInput">Tipo empleado</label>
                                                    </div>
                                                    <div class="col-12 my-2 form-floating">
                                                        <input
                                                            placeholder="Nombre"
                                                            type="text"
                                                            required
                                                            class="form-control"
                                                            name="txtNom"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            />
                                                        <label for="floatingInput">Nombre</label>
                                                    </div>
                                                    <div class="col-6 form-floating">
                                                        <input
                                                            placeholder="Telefono"
                                                            type="number"
                                                            required
                                                            class="form-control"
                                                            name="txtTel"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            maxlength="9"
                                                            />
                                                        <label for="floatingInput">Telefono</label>
                                                    </div>
                                                    <div class="col-6 form-floating">
                                                        <input
                                                            placeholder="dni"
                                                            type="text"
                                                            required
                                                            class="form-control"
                                                            name="txtDNI"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            maxlength="8"
                                                            />
                                                        <label for="floatingInput">DNI</label>
                                                    </div>
                                                    <div class="col-12 my-2 form-floating">
                                                        <input
                                                            placeholder="Direción"
                                                            type="text"
                                                            required
                                                            class="form-control"
                                                            name="txtDir"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            />
                                                        <label for="floatingInput">Dirección</label>
                                                    </div>
                                                    <div class="col-12 my-2 form-floating">
                                                        <input
                                                            placeholder="Contraseña"
                                                            type="password"
                                                            required
                                                            class="form-control"
                                                            name="txtPas"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            />
                                                        <label for="floatingInput">Contraseña</label>
                                                    </div>
                                                </div>
                                                <input type="submit" name="btn" value="actualizar datos" class="btn btn btn-primary w-75 btn-lg my-2">
                                            </table>
                                            <input type="hidden" name="op" value="editar">
                                        </form>
                                    </div>
                                </div>
                                <div
                                    class="
                                    d-none
                                    shadow
                                    rounded
                                    sec3
                                    position-absolute
                                    w-100
                                    bg-light
                                    pt-3
                                    pb-2
                                    mt-2
                                    "
                                    >
                                    <button
                                        type="button"
                                        class="btn-close d-lg-none position-absolute end-0 top-0 mt-2 me-2"
                                        aria-label="Close"
                                        onclick="quitarChecked()"
                                        ></button>
                                    <h3 class="text-center">Eliminar empleado</h3>
                                    <div>
                                        <form action="ServletCRUDempleados" class="d-flex flex-column align-items-center px-3" >
                                            <table>
                                                <div class="col-9 col-md-7 mt-2 form-floating">
                                                    <input
                                                        placeholder="Id empleado"
                                                        name="txtIdU"
                                                        required
                                                        type="text"
                                                        class="form-control"
                                                        maxlength="5"
                                                        />
                                                    <label for="floatingInput">Id empleado</label>
                                                </div>
                                                <input type="submit" name="btn" value="eliminar datos" class="btn btn btn-primary w-75 btn-lg my-2">
                                            </table>
                                            <input type="hidden" name="op" value="eliminar">
                                        </form>
                                    </div>
                                </div>
                                <!-- /Formularios -->
                            </div>
                            <!-- \CRUD -->
                            <!-- detalles -->
                            <div class="container_datos-vista_detalles">
                                <div class="container_datos-vista_detalles-head pt-4">
                                    <h4>
                                        Detalle empleado
                                    </h4>
                                </div>
                                <div class="container_datos-vista_detalles-vista">
                                    <div class="row g-1">
                                        <form action="ServletCRUDempleados">
                                            <%
                                                ArrayList<UsuarioBeans> lista2
                                                        = (ArrayList<UsuarioBeans>) request.getAttribute("lista2");
                                                for (int i = 0; i < lista2.size(); i++) {
                                                    UsuarioBeans emp = lista2.get(i);
                                            %>
                                            <table class="table">
                                                <div class="row px-3 g-1">
                                                    <div class="col-6 form-floating">
                                                        <input
                                                            placeholder="Id empleado"
                                                            type="text"
                                                            required
                                                            class="form-control"
                                                            name="txtIdU"
                                                            value="<%=emp.getIdU()%>"
                                                            readonly="readonly"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            />
                                                        <label for="floatingInput">Id empleado</label>
                                                    </div>
                                                    <div class="col-6 form-floating">
                                                        <input
                                                            placeholder="Id empleado"
                                                            type="text"
                                                            required
                                                            class="form-control"
                                                            name="txtIdU"
                                                            value="<%=emp.getPerfil()%>"
                                                            readonly="readonly"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            />
                                                        <label for="floatingInput">Tipo empleado</label>
                                                    </div>
                                                    <div class="col-12 my-2 form-floating">
                                                        <input
                                                            placeholder="Nombre"
                                                            type="text"
                                                            required
                                                            class="form-control"
                                                            name="txtNom"
                                                            value="<%=emp.getNom()%>"
                                                            readonly="readonly"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            />
                                                        <label for="floatingInput">Nombre</label>
                                                    </div>
                                                    <div class="col-6 form-floating">
                                                        <input
                                                            placeholder="Telefono"
                                                            type="number"
                                                            required
                                                            class="form-control"
                                                            name="txtTel"
                                                            value="<%=emp.getTel()%>"
                                                            readonly="readonly"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            maxlength="9"
                                                            />
                                                        <label for="floatingInput">Telefono</label>
                                                    </div>
                                                    <div class="col-6 form-floating">
                                                        <input
                                                            placeholder="dni"
                                                            type="text"
                                                            required
                                                            class="form-control"
                                                            name="txtDNI"
                                                            value="<%=emp.getDNI()%>"
                                                            readonly="readonly"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            maxlength="8"
                                                            />
                                                        <label for="floatingInput">DNI</label>
                                                    </div>
                                                    <div class="col-12 my-2 form-floating">
                                                        <input
                                                            placeholder="Direción"
                                                            type="text"
                                                            required
                                                            class="form-control"
                                                            name="txtDir"
                                                            value="<%=emp.getDir()%>"
                                                            readonly="readonly"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            />
                                                        <label for="floatingInput">Dirección</label>
                                                    </div>
                                                    <div class="col-12 my-2 form-floating">
                                                        <input
                                                            placeholder="Contraseña"
                                                            type="password"
                                                            required
                                                            class="form-control"
                                                            name="txtPas"
                                                            value="<%=emp.getPassword()%>"
                                                            readonly="readonly"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing"
                                                            />
                                                        <label for="floatingInput">Contraseña</label>
                                                    </div>
                                                </div>
                                            </table>
                                            <%
                                                }
                                            %>
                                        </form>
                                    </div>
                                </div>
                                <a href="#tablas" class="btn button">
                                    ver mas empleados
                                </a>
                            </div>
                            <!-- \detalles -->
                        </div>
                        <!-- seccion tabla -->
                        <div id="tablas" class="container_datos-tabla pt-5 mt-5 pb-3">
                            <h3>
                                Lista de empleados
                            </h3>
                            <div class="container_datos-tabla_tabla overflow-auto">
                                <div class="table-reposible w-100">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>Id_Usuario</th>
                                                <th>Nombre</th>
                                                <th>Password</th>
                                                <th>DNI</th>
                                                <th>Telefono</th>
                                                <th>Direccion</th>
                                                <th>Perfil</th>
                                            </tr>
                                        </thead>
                                        <%
                                            ArrayList<UsuarioBeans> lista
                                                    = (ArrayList<UsuarioBeans>) request.getAttribute("lista");
                                            for (int i = 0; i < lista.size(); i++) {
                                                UsuarioBeans emp = lista.get(i);
                                        %>
                                        <tbody>
                                            <tr>
                                                <td><%=emp.getIdU()%></td>
                                                <td><%=emp.getNom()%></td>
                                                <td><%=emp.getPassword()%></td>
                                                <td><%=emp.getDNI()%></td>
                                                <td><%=emp.getTel()%></td>
                                                <td><%=emp.getDir()%></td>
                                                <td><%=emp.getPerfil()%></td>
                                            </tr>
                                        </tbody>
                                        <%
                                            }
                                        %>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- \seccion tabla -->
                    </section>
                    <!-- \seccion datos -->
                    <!-- funcion de radio buttons -->
                    <script src="./js/radiobuttons.js"></script>
                    <!-- \funcion de radio buttons -->
                    <!-- navbar desplegable -->
                    <script src="./js/navbar.js"></script>
                    <!-- \navbar desplegable -->

                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Dronnvels 2020</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>