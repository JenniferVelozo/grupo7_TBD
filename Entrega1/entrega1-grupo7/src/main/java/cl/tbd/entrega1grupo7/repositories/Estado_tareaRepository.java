package cl.tbd.entrega1grupo7.repositories;
import java.util.List;
import cl.tbd.entrega1grupo7.models.Estado_tarea;

public interface Estado_tareaRepository {
    public int countEstado_tareas();
    public List<Estado_tarea> getAllEstado_tareas();
    public Estado_tarea createEstado_tarea(Estado_tarea estado_tarea);
}