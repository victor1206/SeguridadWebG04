<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sysseguridadg04.entidadesdenegocio.Usuario" %>
<% Usuario usuario = (Usuario) request.getAttribute("usuario");  %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Eliminar Usuario</title>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />
        <main>
            <h5>Eliminar Usuario</h5>
            <form action="Usuario" method="post">
                <input type="hidden" name="accion" 
                       value="<%=request.getAttribute("accion")%>" id="txtHidden">
                <input type="hidden" name="id" value="<%=usuario.getId()%>"
                <div class="row">
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtNombre" name ="nombre" required 
                               class="validate" maxlength="30"
                               value="<%=usuario.getNombre()%>" disabled>
                        <label for="txtNombre">Nombre</label>
                    </div>
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtApellido" name ="apellido" required 
                               class="validate" maxlength="30"
                               value="<%=usuario.getApellido()%>" disabled>
                        <label for="txtApellido">Apellido</label>
                    </div>
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtLogin" name ="login" required 
                               class="validate" maxlength="25"
                               value="<%=usuario.getLogin()%>" disabled>
                        <label for="txtLogin">Login</label>
                    </div>
                    <div class="input-field col 14 s12">
                        <select id="slEstatus" name="estatus" class="validate" 
                                disabled>
                            <option value="0" <%=usuario.getEstatus() == 0 ? "selected":""%>>--SELECCIONAR--</option>
                            <option value="1" <%=usuario.getEstatus() == 1 ? "selected":""%>>ACTIVO</option>
                            <option value="2" <%=usuario.getEstatus() == 2 ? "selected":""%>>INACTIVO</option>
                        </select>
                        <label for="slEstatus" >Estatus</label>
                    </div>
                    <div class="input-field col 14 s12">
                       <input type="text" id="txtRol" name ="nombre" required 
                               class="validate" maxlength="30"
                               value="<%=usuario.getRol().getNombre()%>" disabled>
                        <label for="txtNombre">Rol</label>
                   </div>
                </div>
                <div class="row">
                    <div class="col 112 s12">
                        <button type="submit" class="waves-effect waves-light btn blue">
                            <i class="material-icons right">delete</i>Eliminar
                        </button>
                        <a href="Usuario" class="waves-effect waves-light btn blue">
                            <i class="material-icons right">list</i>Cancelar
                        </a>
                    </div>
                </div>
            </form>
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />
    </body>
</html>
