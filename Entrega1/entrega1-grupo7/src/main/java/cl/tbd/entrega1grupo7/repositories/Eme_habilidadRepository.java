package cl.tbd.entrega1grupo7.repositories;
import java.util.List;
import cl.tbd.entrega1grupo7.models.Eme_habilidad;

public interface Eme_habilidadRepository {
    public int countEme_habilidades();
    public List<Eme_habilidad> getAllEme_habilidades();
    public Eme_habilidad createEme_habilidades(Eme_habilidad eme_habilidad);
}