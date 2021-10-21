package Utils;

import java.sql.*;

public class ConexionDB {
    
    public static Connection getConexion() {
        Connection con = null;
        String cadena = "jdbc:mysql://localhost/bddeswebint?user=root&password=";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(cadena);
            System.out.println("Conexion Satisfactoria");
        } catch (Exception e) {
            System.out.println("Error de conexion: " + e);
        }
        return con;
    }

    public static void main(String[] args) {

    }
}
