<%-- 
    Document   : listaSugerencia
    Created on : 28 may. 2024, 00:56:35
    Author     : Piero
--%>

<%@page import="Modelo.mTipoSugerencia"%>
<%@page import="Config.Conexion"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.msugerencia"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException "%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>../css/formularioSugerencia.jsp.css" rel="stylesheet" type="text/css"/>
        <title>Formulario de Sugerencias</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <!--Posible error en la linea 44, mayusculas idsugerencia-->
    <body>
        <%
            Connection cnx = new Conexion().getConnection();
            PreparedStatement ps; //optimiza la ejecución sql
            ResultSet rs;
            
            String cadSQL = "SELECT a.idsugerencia, a.nombresuge, a.correosuge, a.infosuge, b.idtiposuge, b.nombretiposuge as NombreTipoSugerencia "
                    + " FROM sugerencia a inner join tiposugerencia b "
                    + "on a.idtiposuge = b.idtiposuge";
            List<msugerencia> lista = null;
            
            try {
                ps= cnx.prepareStatement(cadSQL);
                rs = ps.executeQuery();
                lista = new ArrayList<>();
                while (rs.next()) {
                    msugerencia m = new msugerencia(
                        rs.getInt("idsugerencia"),
                        rs.getString("nombresuge"),
                        rs.getString("correosuge"),
                        rs.getString("infosuge"),
                        new mTipoSugerencia(rs.getInt("idtiposuge"), rs.getString("nombretiposuge"))
                    );
                    lista.add(m);
                }
                rs.close();
            } catch (SQLException ex) {
            }
            request.setAttribute("lista", lista);
        %>
        <div class="container">
            <table class="tablaRep">
                <caption>Lista de Sugerencias</caption>
                <thead>
                    <tr>
                        <td>Código</td><td>Nombre</td><td>CorreoElectrónico</td><td>InfoSugerencia</td><td>TipoSugerencia</td><td class="acciones">Acción</td>
                    </tr>    
                </thead>
                <tbody>
                <c:forEach var="msugerencia" items="${lista}">
                    <tr>
                        <td>${sugerencia.idsugerencia}</td>
                        <td>${sugerencia.nombresuge}</td>
                        <td>${sugerencia.infosuge}</td>
                        <td>${sugerencia.correosuge}</td>
                        <td>${sugerencia.tiposugerencia}</td>
                        <td class="acciones">
                            <a href="<%=request.getContextPath()%>/Controlador?accion=edit&id=${sugerencia.idsugerencia}"><i class="fa-solid fa-pen-to-square editar"></i></a>
                            <a href="<%=request.getContextPath()%>/Controlador?accion=delete&id=${sugerencia.idsugerencia}"><i class="fa-sharp fa-solid fa-trash delete"></i></a>
                        </td>
                    </tr>
                </c:forEach>           
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="3">2024-1</td>
                    </tr>
                </tfoot>
            </table>
        </div>
    </body>
</html>
