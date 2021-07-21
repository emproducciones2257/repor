
package conex;

import java.sql.*;

public class Conexion {
    Connection con;
    
    private static final String JDBC_URL="jdbc:mysql://localhost:3306/blanquearaariel?useSSL=false&useTimeZone=true&serverTimeZone=UTC&allowPublicKeyRetrieval=true";
    private static final String user="root";
    private static final String pasw="root";
    public Conexion(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection(JDBC_URL,user,pasw);            
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
    }
    public Connection getConnection(){
        return con;
    }
}
