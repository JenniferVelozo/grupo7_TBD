package cl.tbd.entrega1grupo7.repositories;

import cl.tbd.entrega1grupo7.models.Eme_habilidad;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class Eme_habilidadRepositoryImp implements Eme_habilidadRepository {

    @Autowired
    private Sql2o sql2o;

    @Override
    public int countEme_habilidades() {
        int total = 0;
        try(Connection conn = sql2o.open()){
            total = conn.createQuery("SELECT COUNT(*) FROM eme_habilidad").executeScalar(Integer.class);
        }
        return total;
    }

    @Override
    public List<Eme_habilidad> getAllEme_habilidades() {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("select * from eme_habilidad")
                    .executeAndFetch(Eme_habilidad.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public Eme_habilidad createEme_habilidad(Eme_habilidad eme_habilidad) {
        try(Connection conn = sql2o.open()){
            //int insertedId = (int) 
            conn.createQuery("INSERT INTO eme_habilidad (id, id_emergencia, id_habilidad) values (:id, :id_emergencia, :id_habilidad)", true)
                    .addParameter("id", eme_habilidad.getId())
                    .addParameter("id_habilidad", eme_habilidad.getIdHabilidad())
                    .addParameter("id_emergencia", eme_habilidad.getIdEmergencia())
                    .executeUpdate();//.getKey();
            //eme_habilidad.setId(insertedId);
            return eme_habilidad;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }

    @Override
    public Eme_habilidad updateEme_habilidad(Eme_habilidad eme_habilidad, Integer id) {
        try(Connection conn = sql2o.open()){
            //int insertedId = (int) 
            conn.createQuery("UPDATE eme_habilidad SET id_emergencia = :id_emergencia, id_habilidad = :id_habilidad WHERE id = :id" , true)
                    .addParameter("id", id)
                    .addParameter("id_emergencia", eme_habilidad.getIdEmergencia())
                    .addParameter("id_habilidad", eme_habilidad.getIdHabilidad())
                    .executeUpdate();//.getKey();
            //emergencia.setId(insertedId);
            return eme_habilidad;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }

    @Override
    public List<Eme_habilidad> deleteEme_habilidad(Integer id) {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("DELETE FROM eme_habilidad WHERE id = :id")
                    .addParameter("id", id)
                    .executeAndFetch(Eme_habilidad.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }
}
