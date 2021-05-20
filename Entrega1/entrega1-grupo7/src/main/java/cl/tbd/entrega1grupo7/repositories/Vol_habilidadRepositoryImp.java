package cl.tbd.entrega1grupo7.repositories;

import cl.tbd.entrega1grupo7.models.Vol_habilidad;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class Vol_habilidadRepositoryImp implements Vol_habilidadRepository {

    @Autowired
    private Sql2o sql2o;

    @Override
    public int countVol_habilidades() {
        int total = 0;
        try(Connection conn = sql2o.open()){
            total = conn.createQuery("SELECT COUNT(*) FROM vol_habilidad").executeScalar(Integer.class);
        }
        return total;
    }

    @Override
    public List<Vol_habilidad> getAllVol_habilidades() {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("select * from vol_habilidad")
                    .executeAndFetch(Vol_habilidad.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public Vol_habilidad createVol_habilidad(Vol_habilidad vol_habilidad) {
        try(Connection conn = sql2o.open()){
            //int insertedId = (int) 
            conn.createQuery("INSERT INTO vol_habilidad (id, id_voluntario, id_habilidad) values (:id, :id_voluntario, :id_habilidad)", true)
                    .addParameter("id", vol_habilidad.getId())
                    .addParameter("id_voluntario", vol_habilidad.getIdVoluntario())
                    .addParameter("id_habilidad", vol_habilidad.getIdHabilidad())
                    .executeUpdate();//.getKey();
            //emergencia.setId(insertedId);
            return vol_habilidad;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }

    @Override
    public Vol_habilidad updateVol_habilidad(Vol_habilidad vol_habilidad, Integer id) {
        try(Connection conn = sql2o.open()){
            //int insertedId = (int) 
            conn.createQuery("UPDATE vol_habilidad SET id_voluntario = :id_voluntario, id_habilidad = :id_habilidad WHERE id = :id" , true)
                    .addParameter("id", id)
                    .addParameter("id_voluntario", vol_habilidad.getIdVoluntario())
                    .addParameter("id_habilidad", vol_habilidad.getIdHabilidad())
                    .executeUpdate();//.getKey();
            //emergencia.setId(insertedId);
            return vol_habilidad;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }

    @Override
    public List<Vol_habilidad> deleteVol_habilidad(Integer id) {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("DELETE FROM vol_habilidad WHERE id = :id")
                    .addParameter("id", id)
                    .executeAndFetch(Vol_habilidad.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }
}