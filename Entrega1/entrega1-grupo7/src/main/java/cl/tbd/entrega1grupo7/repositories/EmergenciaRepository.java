package cl.tbd.entrega1grupo7.repositories;
import java.util.List;
import cl.tbd.entrega1grupo7.models.Emergencia;

public interface EmergenciaRepository {
    public int countEmergencias();
    public List<Emergencia> getAllEmergencias();
    public Emergencia createEmergencia(Emergencia emergencia);
}