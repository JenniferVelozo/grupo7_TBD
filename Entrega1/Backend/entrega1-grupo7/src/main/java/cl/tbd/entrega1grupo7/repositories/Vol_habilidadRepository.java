package cl.tbd.entrega1grupo7.repositories;
import java.util.List;
import cl.tbd.entrega1grupo7.models.Vol_habilidad;

public interface Vol_habilidadRepository {
    public int countVol_habilidades();
    public List<Vol_habilidad> getAllVol_habilidades();
    public Vol_habilidad createVol_habilidad(Vol_habilidad vol_habilidad);
    public Vol_habilidad updateVol_habilidad(Vol_habilidad vol_habilidad, Integer id);
    public List<Vol_habilidad> deleteVol_habilidad(Integer id);
}