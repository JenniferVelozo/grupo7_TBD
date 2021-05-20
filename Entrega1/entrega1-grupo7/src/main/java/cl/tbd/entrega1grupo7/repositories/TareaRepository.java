package cl.tbd.entrega1grupo7.repositories;
import java.util.List;
import cl.tbd.entrega1grupo7.models.Tarea;

public interface TareaRepository {
    public int countTareas();
    public List<Tarea> getAllTareas();
    public Tarea createTarea(Tarea tarea);
    public Tarea updateTarea(Tarea tarea, Integer id);
    public List<Tarea> deleteTarea(Integer id);
}