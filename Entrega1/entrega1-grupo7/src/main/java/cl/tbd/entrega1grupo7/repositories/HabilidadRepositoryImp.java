package cl.tbd.entrega1grupo7.repositories;

import cl.tbd.entrega1grupo7.models.Habilidad;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class HabilidadRepositoryImp implements HabilidadRepository {

    @Autowired
    private Sql2o sql2o;

    @Override
    public int countHabilidades() {
        int total = 0;
        try(Connection conn = sql2o.open()){
            total = conn.createQuery("SELECT COUNT(*) FROM habilidad").executeScalar(Integer.class);
        }
        return total;
    }

    @Override
    public List<Habilidad> getAllHabilidades() {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("select * from habilidad")
                    .executeAndFetch(Habilidad.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public Habilidad createHabilidad(Habilidad habilidad) {
        try(Connection conn = sql2o.open()){
            //int insertedId = (int) 
            conn.createQuery("INSERT INTO habilidad (id, descrip) values (:id, :descrip)", true)
                    .addParameter("id", habilidad.getId())
                    .addParameter("descrip", habilidad.getDescrip())
                    .executeUpdate();//.getKey();
            //habilidad.setId(insertedId);
            return habilidad;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }
    @Override
    public Habilidad updateHabilidad(Habilidad habilidad, Integer id) {
        try(Connection conn = sql2o.open()){
            //int insertedId = (int) 
            conn.createQuery("UPDATE habilidad SET descrip = :descrip WHERE id = :id" , true)
                    .addParameter("id", habilidad.getId())
                    .addParameter("descrip", habilidad.getDescrip())
                    .executeUpdate();//.getKey();
            //emergencia.setId(insertedId);
            return habilidad;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }

    @Override
    public List<Habilidad> deleteHabilidad(Integer id) {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("DELETE FROM habilidad WHERE id = :id")
                    .addParameter("id", id)
                    .executeAndFetch(Habilidad.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }
}