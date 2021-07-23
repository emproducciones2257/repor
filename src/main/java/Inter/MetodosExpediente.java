package Inter;


import java.util.ArrayList;
import blanqueoAriel.Model.Expediente;


public interface MetodosExpediente {
    
    void cargarExpediente(Expediente exp);
    
    ArrayList<Expediente> listarTodo();
    
    ArrayList<Expediente> listarXFuero(String fuero);
}
