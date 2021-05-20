package cl.tbd.entrega1grupo7.repositories;
import java.util.List;
import cl.tbd.entrega1grupo7.models.Habilidad;

public interface HabilidadRepository {
    public int countHabilidades();
    public List<Habilidad> getAllHabilidades();
    public Habilidad createHabilidad(Habilidad habilidad);
}