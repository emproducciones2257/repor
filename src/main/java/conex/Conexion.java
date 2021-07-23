
package conex;

import java.sql.*;

public class Conexion {
    Connection con;
    
    private static final String JDBC_URL="jdbc:mysql://us-cdbr-east-04.cleardb.com/heroku_4cd07d7ebf44f29?useSSL=false&useTimeZone=true&serverTimeZone=UTC&allowPublicKeyRetrieval=true";
    private static final String user="b2ed892717d793";
    private static final String pasw="35bbd94c";
    
    
    public static Connection crearConexion() {
    	
    	Connection con = null;
    	
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(JDBC_URL,user,pasw);
		} catch (SQLException e) {
			
			e.printStackTrace();
			System.out.println("Error Otro");
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
			System.out.println("Error clase");
		}
    	return con;
    } 
}
