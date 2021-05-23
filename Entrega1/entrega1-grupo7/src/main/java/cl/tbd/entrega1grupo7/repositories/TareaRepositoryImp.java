package cl.tbd.entrega1grupo7.repositories;

import cl.tbd.entrega1grupo7.models.Tarea;
import cl.tbd.entrega1grupo7.models.Ranking;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class TareaRepositoryImp implements TareaRepository {

    @Autowired
    private Sql2o sql2o;

    @Override
    public int countTareas() {
        int total = 0;
        try(Connection conn = sql2o.open()){
            total = conn.createQuery("SELECT COUNT(*) FROM tarea").executeScalar(Integer.class);
        }
        return total;
    }

    @Override
    public List<Tarea> getAllTareas() {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("select * from tarea")
                    .executeAndFetch(Tarea.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public List<Tarea> filtrarTareas(Integer id) {
        try(Connection conn = sql2o.open()){
            //return conn.createQuery("SELECT FROM tarea AS t LEFT JOIN ranking AS r ON r.id_tarea = t.id WHERE r.id_voluntario = :id")
            return conn.createQuery("SELECT t.id, t.nombre, t.descrip, t.cant_vol_requeridos, t.cant_vol_inscritos, t.id_emergencia, t.finicio, t.ffin, t.id_estado FROM tarea AS t, ranking AS r WHERE r.id_voluntario = :id AND r.id_tarea = t.id AND r.flg_invitado = 1 AND t.cant_vol_inscritos < t.cant_vol_requeridos AND t.id_estado != 2")
                    .addParameter("id", id)
                    .executeAndFetch(Tarea.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public Tarea createTarea(Tarea tarea) {
        try(Connection conn = sql2o.open()){
            //int insertedId = (int) 
            conn.createQuery("INSERT INTO tarea (id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) values (:id, :nombre, :descrip, :cant_vol_requeridos, :cant_vol_inscritos, :id_emergencia, :finicio, :ffin, :id_estado)", true)
                    .addParameter("id", tarea.getId())
                    .addParameter("nombre", tarea.getNombre())
                    .addParameter("descrip", tarea.getDescrip())
                    .addParameter("cant_vol_requeridos", tarea.getCant_vol_requeridos())
                    .addParameter("cant_vol_inscritos", tarea.getCant_vol_inscritos())
                    .addParameter("id_emergencia", tarea.getId_emergencia())
                    .addParameter("finicio", tarea.getFinicio())
                    .addParameter("ffin", tarea.getFfin())
                    .addParameter("id_estado", tarea.getId_estado())
                    .executeUpdate();//.getKey();
            //emergencia.setId(insertedId);
            return tarea;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }

    @Override
    public Tarea updateTarea(Tarea tarea, Integer id) {
        try(Connection conn = sql2o.open()){
            //int insertedId = (int) 
            conn.createQuery("UPDATE tarea SET nombre = :nombre, descrip = :descrip, cant_vol_requeridos = :cant_vol_requeridos, cant_vol_inscritos = :cant_vol_inscritos, id_emergencia = :id_emergencia, finicio = :finicio, ffin = :ffin, id_estado = :id_estado WHERE id = :id" , true)
                    .addParameter("id", id)
                    .addParameter("nombre", tarea.getNombre())
                    .addParameter("descrip", tarea.getDescrip())
                    .addParameter("cant_vol_requeridos", tarea.getCant_vol_requeridos())
                    .addParameter("cant_vol_inscritos", tarea.getCant_vol_inscritos())
                    .addParameter("id_emergencia", tarea.getId_emergencia())
                    .addParameter("finicio", tarea.getFinicio())
                    .addParameter("ffin", tarea.getFfin())
                    .addParameter("id_estado", tarea.getId_estado())
                    .executeUpdate();//.getKey();
            //emergencia.setId(insertedId);
            return tarea;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }

    @Override
    public List<Tarea> deleteTarea(Integer id) {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("DELETE FROM tarea WHERE id = :id")
                    .addParameter("id", id)
                    .executeAndFetch(Tarea.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }
}