package cl.tbd.entrega1grupo7.repositories;
import java.util.List;
import cl.tbd.entrega1grupo7.models.TareaDistribuida;

public interface TareaDistribuidaRepository {
    public int countTareas();
    public List<TareaDistribuida> getAllTareas();
    public List<TareaDistribuida> filtrarTareas(Integer id);
    public TareaDistribuida createTarea(TareaDistribuida tarea);
    public TareaDistribuida updateTarea(TareaDistribuida tarea, Integer id);
    public List<TareaDistribuida> deleteTarea(Integer id);
}

 
