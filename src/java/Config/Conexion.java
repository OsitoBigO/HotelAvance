/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author LAB-USR-LNORTE
 */
public class Conexion {
    public Connection getConnection() {
        Connection cnx = null;

        String url = "jdbc:mysql://localhost:3307/bdparadise?useTimeZone=true&"
                + "serverTimezone=UTC&autoReconnect=true";

        String user = "root";
        String clave = "root";

        String Driver = "com.mysql.cj.jdbc.Driver";

        try {
            Class.forName(Driver);
            cnx = DriverManager.getConnection(url, user, clave);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cnx;
    }}