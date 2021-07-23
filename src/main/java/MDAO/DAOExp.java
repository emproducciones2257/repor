package MDAO;

import Inter.MetodosExpediente;
import blanqueoAriel.Model.Expediente;
import conex.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DAOExp implements MetodosExpediente{

    // sql
    private static final String sqlInsert="INSERT INTO expe VALUES (NULL,?,?,?,?,?)";
    private static final String sqlGetAll = "SELECT * FROM expe";
    private static final String sqlGetXFuero = "SELECT * FROM expe WHERE fuero = ?";

    private Connection c = null;
    private PreparedStatement pre = null;
    private ResultSet resul = null;
    private Expediente expe;
    private Conexion con = null;
    

    public void cargarExpediente(Expediente exp) {
        con = new Conexion();
        try {
            c = Conexion.crearConexion();
            pre = c.prepareStatement(sqlInsert);
            pre.setString(1, exp.getNroExp());
            pre.setString(2, exp.getCara());
            pre.setString(3, exp.getFuero());
            pre.setString(4, exp.getNroJuzgado());
            pre.setString(5, exp.getFeUlUpdate());         
            pre.execute();
   
        } catch (SQLException ex) {
            Logger.getLogger(DAOExp.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                pre.close();
                c.close();
            } catch (SQLException ex) {
                Logger.getLogger(DAOExp.class.getName()).log(Level.SEVERE, null, ex);
            }           
        }        
    }   

    
    public ArrayList<Expediente> listarTodo() {
        ArrayList<Expediente> list = new ArrayList<Expediente>();
        
        try {
            c = Conexion.crearConexion();
            pre = c.prepareStatement(sqlGetAll);
            resul = pre.executeQuery();
            while (resul.next()) {
                
                Expediente e = new Expediente();
                    e.setIdExp(resul.getLong("idExp"));
                    e.setNroExp(resul.getString("nroExp"));
                    e.setCara(resul.getString("cara"));
                    e.setFuero(resul.getString("fuero"));
                    e.setNroJuzgado(resul.getString("nroJuzgado"));
                    e.setFeUlUpdate(resul.getString("feUlUpdate"));
                    list.add(e);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return list;
    }


	public ArrayList<Expediente> listarXFuero(String fuero) {
		
		ArrayList<Expediente> list = new ArrayList<Expediente>();
        
        try {
            c = Conexion.crearConexion();
            pre = c.prepareStatement(sqlGetXFuero);
            pre.setString(1, fuero);
            resul = pre.executeQuery();
            while (resul.next()) {
                
                Expediente e = new Expediente();
                    e.setIdExp(resul.getLong("idExp"));
                    e.setNroExp(resul.getString("nroExp"));
                    e.setCara(resul.getString("cara"));
                    e.setFuero(resul.getString("fuero"));
                    e.setNroJuzgado(resul.getString("nroJuzgado"));
                    e.setFeUlUpdate(resul.getString("feUlUpdate"));
                    list.add(e);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return list;
	}
}
