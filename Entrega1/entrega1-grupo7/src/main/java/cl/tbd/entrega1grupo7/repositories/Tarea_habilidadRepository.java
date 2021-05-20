package cl.tbd.entrega1grupo7.repositories;
import java.util.List;
import cl.tbd.entrega1grupo7.models.Tarea_habilidad;

public interface Tarea_habilidadRepository {
    public int countTarea_habilidades();
    public List<Tarea_habilidad> getAllTarea_habilidades();
    public Tarea_habilidad createTarea_habilidad(Tarea_habilidad tarea_habilidad);
    public Tarea_habilidad updateTarea_habilidad(Tarea_habilidad tarea_habilidad, Integer id);
    public List<Tarea_habilidad> deleteTarea_habilidad(Integer id);
}