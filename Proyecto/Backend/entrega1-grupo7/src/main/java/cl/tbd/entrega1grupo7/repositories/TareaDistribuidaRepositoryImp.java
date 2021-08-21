package cl.tbd.entrega1grupo7.repositories;

import cl.tbd.entrega1grupo7.models.TareaDistribuida;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class TareaDistribuidaRepositoryImp implements TareaDistribuidaRepository {

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
    public List<TareaDistribuida> getAllTareas() {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("select * from tarea")
                    .executeAndFetch(TareaDistribuida.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public List<TareaDistribuida> filtrarTareas(Integer id) {
        try(Connection conn = sql2o.open()){
            //return conn.createQuery("SELECT FROM tarea AS t LEFT JOIN ranking AS r ON r.id_tarea = t.id WHERE r.id_voluntario = :id")
            return conn.createQuery("SELECT t.id, t.nombre, t.descrip, t.cant_vol_requeridos, t.cant_vol_inscritos, t.id_emergencia, t.finicio, t.ffin, t.id_estado FROM tarea AS t, ranking AS r WHERE r.id_voluntario = :id AND r.id_tarea = t.id AND r.flg_invitado = 1 AND r.flg_participa = 1 AND t.cant_vol_inscritos < t.cant_vol_requeridos AND t.id_estado != 2")
                    .addParameter("id", id)
                    .executeAndFetch(TareaDistribuida.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public TareaDistribuida createTarea(TareaDistribuida tarea) {
        int hash = tarea.getId()%3;
        if (hash == 0){
            try(Connection conn = sql2o.open()){
                tarea.setNombreTabla("tarea0");
                //int insertedId = (int) 
                conn.createQuery("INSERT INTO tarea0 (nombre_tabla, id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) values ('tarea0', :id, :nombre, :descrip, :cant_vol_requeridos, :cant_vol_inscritos, :id_emergencia, :finicio, :ffin, :id_estado)", true)
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
        if (hash == 1){
            try(Connection conn = sql2o.open()){
                tarea.setNombreTabla("tarea1");
                //int insertedId = (int) 
                conn.createQuery("INSERT INTO tarea1 (nombre_tabla, id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) values ('tarea1', :id, :nombre, :descrip, :cant_vol_requeridos, :cant_vol_inscritos, :id_emergencia, :finicio, :ffin, :id_estado)", true)
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

        if (hash == 2){
            try(Connection conn = sql2o.open()){
                tarea.setNombreTabla("tarea2");
                //int insertedId = (int) 
                conn.createQuery("INSERT INTO tarea2 (nombre_tabla, id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) values ('tarea2', :id, :nombre, :descrip, :cant_vol_requeridos, :cant_vol_inscritos, :id_emergencia, :finicio, :ffin, :id_estado)", true)
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
        return null;
    }

    @Override
    public TareaDistribuida updateTarea(TareaDistribuida tarea, Integer id) {
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
    public List<TareaDistribuida> deleteTarea(Integer id) {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("DELETE FROM tarea WHERE id = :id")
                    .addParameter("id", id)
                    .executeAndFetch(TareaDistribuida.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }



    // //Borrar/comentar
    // @Override
    // public List<Tarea> getTareasByEmergencia(Integer id_emergencia) {
    //     try(Connection conn = sql2o.open()){
    //         //return conn.createQuery("SELECT FROM tarea AS t LEFT JOIN ranking AS r ON r.id_tarea = t.id WHERE r.id_voluntario = :id")
    //         return conn.createQuery("SELECT nombre, descrip FROM tarea WHERE tarea.id_emergencia = id_emergencia")
    //                 .addParameter("id_emergencia", id_emergencia)
    //                 .executeAndFetch(Tarea.class);
    //     } catch (Exception e) {
    //         //System.out.println(e.getMessage());
    //         System.out.println(e.getMessage());
    //         return null;
    //     }
    // }
}
