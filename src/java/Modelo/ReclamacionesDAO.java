/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Modelo.mreclamaciones;
import Config.Conexion;

public class ReclamacionesDAO {

    private Connection cnx;

    public ReclamacionesDAO()  {
        cnx = new Conexion().getConnection();
    }

    public String insert(mreclamaciones mrec) {
        String resp = "";
        String cadSQL = "INSERT INTO reclamaciones (nombrerec, dnirec, correorec, fecharec, descripcionrec ) VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement ps = cnx.prepareStatement(cadSQL)) {
            ps.setString(1, mrec.getNombrerec());
            ps.setString(2, mrec.getDnirec());
            ps.setString(3, mrec.getCorreorec());
            ps.setDate(4, java.sql.Date.valueOf(mrec.getFecharec()));  // Asumiendo que `getFecha_reclamo` retorna un `String` en formato "yyyy-mm-dd"
            ps.setString(5, mrec.getDesripcionrec());
            ps.executeUpdate();
        } catch (SQLException ex) {
            resp = ex.getMessage();
        }

        return resp;
    }
}
