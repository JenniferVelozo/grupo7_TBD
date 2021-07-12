package cl.tbd.entrega1grupo7.repositories;
import java.util.List;
import java.sql.Date;
import cl.tbd.entrega1grupo7.models.Voluntario;
import cl.tbd.entrega1grupo7.models.Consulta32;

public interface VoluntarioRepository {
    public int countVoluntarios();
    public List<Voluntario> getAllVoluntarios();
    public Voluntario createVoluntario(Voluntario voluntario);
    public Voluntario updateVoluntario(Voluntario voluntario, Integer id);
    public List<Voluntario> deleteVoluntario(Integer id);
    public String getJson(Integer id);
    public List<Consulta32> voluntariosByTareas(Integer id_emergencia, Date finicio, Date ffin);
}