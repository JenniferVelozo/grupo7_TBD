package cl.tbd.entrega1grupo7.repositories;
import java.util.List;
import cl.tbd.entrega1grupo7.models.Voluntario;

public interface VoluntarioRepository {
    public int countVoluntarios();
    public List<Voluntario> getAllVoluntarios();
    public Voluntario createVoluntario(Voluntario voluntario);
    public Voluntario updateVoluntario(Voluntario voluntario, Integer id);
    public List<Voluntario> deleteVoluntario(Integer id);
}