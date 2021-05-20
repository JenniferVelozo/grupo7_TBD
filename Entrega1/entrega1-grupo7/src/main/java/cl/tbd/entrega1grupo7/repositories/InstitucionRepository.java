package cl.tbd.entrega1grupo7.repositories;
import java.util.List;
import cl.tbd.entrega1grupo7.models.Institucion;

public interface InstitucionRepository {
    public int countInstituciones();
    public List<Institucion> getAllInstituciones();
    public Institucion createInstitucion(Institucion institucion);
    public Institucion updateInstitucion(Institucion institucion, Integer id);
    public List<Institucion> deleteInstitucion(Integer id);
}