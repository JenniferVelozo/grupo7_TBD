package cl.tbd.entrega1grupo7.repositories;

import cl.tbd.entrega1grupo7.models.Tarea_habilidad;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class Tarea_habilidadRepositoryImp implements Tarea_habilidadRepository {

    @Autowired
    private Sql2o sql2o;

    @Override
    public int countTarea_habilidades() {
        int total = 0;
        try(Connection conn = sql2o.open()){
            total = conn.createQuery("SELECT COUNT(*) FROM tarea_habilidad").executeScalar(Integer.class);
        }
        return total;
    }

    @Override
    public List<Tarea_habilidad> getAllTarea_habilidades() {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("select * from tarea_habilidad")
                    .executeAndFetch(Tarea_habilidad.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public Tarea_habilidad createTarea_habilidad(Tarea_habilidad tarea_habilidad) {
        try(Connection conn = sql2o.open()){
            //int insertedId = (int) 
            conn.createQuery("INSERT INTO tarea_habilidad (id, id_emehab, id_tarea) values (:id, :id_emehab, :id_tarea)", true)
                    .addParameter("id", tarea_habilidad.getId())
                    .addParameter("id_emehab", tarea_habilidad.getIdEmehab())
                    .addParameter("id_tarea", tarea_habilidad.getIdTarea())
                    .executeUpdate();//.getKey();
            //habilidad.setId(insertedId);
            return tarea_habilidad;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }

    @Override
    public Tarea_habilidad updateTarea_habilidad(Tarea_habilidad tarea_habilidad, Integer id) {
        try(Connection conn = sql2o.open()){
            //int insertedId = (int) 
            conn.createQuery("UPDATE tarea_habilidad SET id_emehab = :id_emehab, id_tarea = :id_tarea WHERE id = :id" , true)
                    .addParameter("id", id)
                    .addParameter("id_emehab", tarea_habilidad.getIdEmehab())
                    .addParameter("id_tarea", tarea_habilidad.getIdTarea());
            //tarea_habilidad.setId(insertedId);
            return tarea_habilidad;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }

    @Override
    public List<Tarea_habilidad> deleteTarea_habilidad(Integer id) {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("DELETE FROM tarea_habilidad WHERE id = :id")
                    .addParameter("id", id)
                    .executeAndFetch(Tarea_habilidad.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }
}