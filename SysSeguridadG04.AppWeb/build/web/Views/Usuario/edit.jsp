<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sysseguridadg04.entidadesdenegocio.Usuario" %>
<% Usuario usuario = (Usuario) request.getAttribute("usuario");  %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Modificar Usuario</title>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />
        <main>
            <h5>Modificar Usuario</h5>
            <form action="Usuario" method="post" onsubmit="return validarFormulario()">
                <input type="hidden" name="accion" 
                       value="<%=request.getAttribute("accion")%>" id="txtHidden">
                <input type="hidden" name="id" value="<%=usuario.getId()%>"
                <div class="row">
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtNombre" name ="nombre" required 
                               class="validate" maxlength="30"
                               value="<%=usuario.getNombre()%>">
                        <label for="txtNombre">Nombre</label>
                    </div>
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtApellido" name ="apellido" required 
                               class="validate" maxlength="30"
                               value="<%=usuario.getApellido()%>">
                        <label for="txtApellido">Apellido</label>
                    </div>
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtLogin" name ="login" required 
                               class="validate" maxlength="25"
                               value="<%=usuario.getLogin()%>">
                        <label for="txtLogin">Login</label>
                    </div>
                    <div class="input-field col 14 s12">
                        <select id="slEstatus" name="estatus" class="validate">
                            <option value="0" <%=usuario.getEstatus() == 0 ? "selected":""%>>--SELECCIONAR--</option>
                            <option value="1" <%=usuario.getEstatus() == 1 ? "selected":""%>>ACTIVO</option>
                            <option value="2" <%=usuario.getEstatus() == 2 ? "selected":""%>>INACTIVO</option>
                        </select>
                        <label for="slEstatus" >Estatus</label>
                        <span id="slEstatus_error" 
                              style="color:red;font-weight: bold" class="helper-text">
                        </span>
                    </div>
                    <div class="input-field col 14 s12">
                       <jsp:include page="/Views/Rol/select.jsp" >
                           <jsp:param name="id" value="<%=usuario.getIdRol()%>"/>
                       </jsp:include>
                        <span id="slRol_error" 
                              style="color:red;font-weight: bold" class="helper-text">
                        </span>
                   </div>
                </div>
                <div class="row">
                    <div class="col 112 s12">
                        <button type="submit" class="waves-effect waves-light btn blue">
                            <i class="material-icons right">save</i>Guardar
                        </button>
                        <a href="Usuario" class="waves-effect waves-light btn blue">
                            <i class="material-icons right">list</i>Cancelar
                        </a>
                    </div>
                </div>
            </form>
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />
        <script>
            function validarFormulario()
            {
                var result = true;
                var txtEstatus = $("#slEstatus").val();
                var txtRol = $("#slRol").val();
                
                if(parseInt(txtEstatus) == 0)
                {
                    $("#slEstatus_error").empty();
                    $("#slEstatus_error")
                    .append("El estatus el Obligatorio");
                    result = false;
                }
                else
                {
                    $("#slEstatus_error").empty();
                }
                
                if(parseInt(txtRol) == 0)
                {
                    $("#slRol_error").empty();
                    $("#slRol_error")
                    .append("El Rol el Obligatorio");
                    result = false;
                }
                else
                {
                    $("#slRol_error").empty();
                }
                return result;
            }
        </script>
    </body>
</html>
