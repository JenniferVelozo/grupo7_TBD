package cl.tbd.entrega1grupo7.repositories;
import java.util.List;
import cl.tbd.entrega1grupo7.models.Emergencia;
import cl.tbd.entrega1grupo7.models.Consulta35;

public interface EmergenciaRepository {
    public int countEmergencias();
    public List<Emergencia> getAllEmergencias();
    //public Emergencia createEmergencia(Emergencia emergencia);
    //public Emergencia updateEmergencia(Emergencia emergencia, Integer id);
    public List<Emergencia> deleteEmergencia(Integer id);
    public List<Emergencia> emergenciasByLocation(Integer id_voluntario);
    public List<Consulta35> habilidadesPorEmergencia(Integer id_emergencia);
}