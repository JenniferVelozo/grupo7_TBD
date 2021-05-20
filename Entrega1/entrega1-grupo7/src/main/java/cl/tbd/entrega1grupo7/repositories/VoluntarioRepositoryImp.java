package cl.tbd.entrega1grupo7.repositories;

import cl.tbd.entrega1grupo7.models.Voluntario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class VoluntarioRepositoryImp implements VoluntarioRepository {

    @Autowired
    private Sql2o sql2o;

    @Override
    public int countVoluntarios() {
        int total = 0;
        try(Connection conn = sql2o.open()){
            total = conn.createQuery("SELECT COUNT(*) FROM voluntario").executeScalar(Integer.class);
        }
        return total;
    }

    @Override
    public List<Voluntario> getAllVoluntarios() {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("select * from voluntario")
                    .executeAndFetch(Voluntario.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public Voluntario createVoluntario(Voluntario voluntario) {
        try(Connection conn = sql2o.open()){
            //int insertedId = (int) 
            conn.createQuery("INSERT INTO voluntario (id, nombre, fnacimiento) values (:id, :nombre, :fnacimiento)", true)
                    .addParameter("id", voluntario.getId())
                    .addParameter("nombre", voluntario.getNombre())
                    .addParameter("fnacimiento", voluntario.getFnacimiento())
                    .executeUpdate();//.getKey();
            //emergencia.setId(insertedId);
            return voluntario;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }

    @Override
    public Voluntario updateVoluntario(Voluntario voluntario, Integer id) {
        try(Connection conn = sql2o.open()){
            //int insertedId = (int) 
            conn.createQuery("UPDATE voluntario SET nombre = :nombre, fnacimiento = :fnacimiento WHERE id = :id" , true)
                    .addParameter("id", id)
                    .addParameter("nombre", voluntario.getNombre())
                    .addParameter("fnacimiento", voluntario.getFnacimiento())
                    .executeUpdate();//.getKey();
            //voluntario.setId(insertedId);
            return voluntario;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }

    @Override
    public List<Voluntario> deleteVoluntario(Integer id) {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("DELETE FROM voluntario WHERE id = :id")
                    .addParameter("id", id)
                    .executeAndFetch(Voluntario.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }
}