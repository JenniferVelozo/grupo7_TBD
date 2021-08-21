
package cl.tbd.entrega1grupo7.repositories;

import cl.tbd.entrega1grupo7.models.Emergencia;
import cl.tbd.entrega1grupo7.models.Voluntario;
import cl.tbd.entrega1grupo7.models.Consulta35;
import org.postgis.Point;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class EmergenciaRepositoryImp implements EmergenciaRepository {

    @Autowired
    private Sql2o sql2o;

    @Override
    public int countEmergencias() {
        int total = 0;
        try(Connection conn = sql2o.open()){
            total = conn.createQuery("SELECT COUNT(*) FROM emergencia").executeScalar(Integer.class);
        }
        return total;
    }

    /*
    Versión entrega 1, sin ubicación.
    @Override
    public List<Emergencia> getAllEmergencias() {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("select * from emergencia")
                    .executeAndFetch(Emergencia.class);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }*/

    
    @Override
    public List<Emergencia> getAllEmergencias() {
        try(Connection conn = sql2o.open()){
            final String query = "SELECT id, nombre, descrip, finicio, ffin, id_institucion, st_x(st_astext( location)) AS longitude, st_y(st_astext(location)) AS latitude FROM emergencia;";
            return conn.createQuery(query)
                    .executeAndFetch(Emergencia.class);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    /*
    @Override
    public Emergencia createEmergencia(Emergencia emergencia) {
        try(Connection conn = sql2o.open()){
            String query = "INSERT INTO emergencia (id, nombre, descrip, finicio, ffin, id_institucion, location) " +
            "VALUES (:id, :nombre, :descrip, :finicio, :ffin, :id_institucion, ST_GeomFromText(:point, 4326))";

            String point = "POINT("+emergencia.getLongitude()+" "+emergencia.getLatitude()+")";
            System.out.println("point: "+point);
            
            int insertedId = (int) 
            conn.createQuery(query, true)
                    .addParameter("id", emergencia.getId())
                    .addParameter("nombre", emergencia.getNombre())
                    .addParameter("descrip", emergencia.getDescrip())
                    .addParameter("finicio", emergencia.getFinicio())
                    .addParameter("ffin", emergencia.getFfin())
                    .addParameter("id_institucion", emergencia.getIdInstitucion())
                    .addParameter("point", point)
                    .executeUpdate();//.getKey();
            //emergencia.setId(insertedId);
            return emergencia;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
        
    }*/

    /*
    @Override
    public Emergencia createEmergencia(Emergencia emergencia) {
        try(Connection conn = sql2o.open()){
            int insertedId = (int) 
            conn.createQuery("INSERT INTO emergencia (id, nombre, descrip, finicio, ffin, id_institucion) values (:id, :nombre, :descrip, :finicio, :ffin, :id_institucion)", true)
                    .addParameter("id", emergencia.getId())
                    .addParameter("nombre", emergencia.getNombre())
                    .addParameter("descrip", emergencia.getDescrip())
                    .addParameter("finicio", emergencia.getFinicio())
                    .addParameter("ffin", emergencia.getFfin())
                    .addParameter("id_institucion", emergencia.getIdInstitucion())
                    .executeUpdate();//.getKey();
            emergencia.setId(insertedId);
            return emergencia;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }*/

    /*
    @Override
    public Emergencia updateEmergencia(Emergencia emergencia, Integer id) {
        try(Connection conn = sql2o.open()){
            int insertedId = (int) 
            conn.createQuery("UPDATE emergencia SET nombre = :nombre, descrip = :descrip, finicio = :finicio, ffin = :ffin, id_institucion = :id_institucion WHERE id = :id" , true)
                    .addParameter("id", id)
                    .addParameter("nombre", emergencia.getNombre())
                    .addParameter("descrip", emergencia.getDescrip())
                    .addParameter("finicio", emergencia.getFinicio())
                    .addParameter("ffin", emergencia.getFfin())
                    .addParameter("id_institucion", emergencia.getIdInstitucion())
                    .executeUpdate();//.getKey();
            emergencia.setId(insertedId);
            return emergencia;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }*/

    @Override
    public List<Emergencia> deleteEmergencia(Integer id) {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("DELETE FROM emergencia WHERE id = :id")
                    .addParameter("id", id)
                    .executeAndFetch(Emergencia.class);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }

    // @Override
    // public String getJson(Integer id) {
    //     final String query = "SELECT json_build_object("+
    //         "'type', 'FeatureCollection',"+
    //         "'features', json_agg(ST_AsGeoJSON(t.geom)::json)"+
    //         ")"+
    //     "FROM division_regional_4326 AS t WHERE t.gid = :id;";
    //     return null;
    // }
    

    @Override
    public List<Emergencia> emergenciasByLocation(Integer id_voluntario){
        try(Connection conn = sql2o.open()){
            // final String query = "SELECT * FROM (SELECT e.id, e.nombre, st_x(st_astext( location)) AS longEme, st_y(st_astext(location)) AS latEme, ST_Contains(d.geom, e.location) as st_contains, salida2.nom_reg , salida2.nombre, salida2.long, salida2.lat FROM (SELECT salida.gid, salida.nom_reg , salida.nombre, salida.long, salida.lat FROM (SELECT d.gid,d.nom_reg,v.id, v.nombre, st_x(st_astext( location)) AS long, st_y(st_astext(location)) AS lat,  ST_Contains(d.geom, v.location) as st_contains FROM division_regional d, voluntario v WHERE v.id = :id_voluntario) as salida WHERE salida.st_contains = true) as salida2, emergencia e, division_regional d WHERE salida2.gid = d.gid) as salida3 WHERE salida3.st_contains = true;";
            // mejor opcion
            // final String query = "SELECT salida3.id, emergencia.nombre, emergencia.descrip, emergencia.finicio, emergencia.ffin FROM (SELECT e.id, e.nombre as nombreEmergencia, st_x(st_astext( location)) AS longEme, st_y(st_astext(location)) AS latEme, ST_Contains(d.geom, e.location) as st_contains, salida2.nom_reg , salida2.nombre, salida2.long, salida2.lat FROM (SELECT salida.gid, salida.nom_reg , salida.nombre, salida.long, salida.lat FROM (SELECT d.gid,d.nom_reg,v.id, v.nombre, st_x(st_astext( location)) AS long, st_y(st_astext(location)) AS lat,  ST_Contains(d.geom, v.location) as st_contains FROM division_regional d, voluntario v WHERE v.id = :id_voluntario) as salida WHERE salida.st_contains = true) as salida2, emergencia e, division_regional d WHERE salida2.gid = d.gid) as salida3, emergencia WHERE salida3.st_contains = true AND salida3.id = emergencia.id;";
            // final String query = "SELECT * FROM (SELECT e.id, e.nombre as nombreEmergencia, st_x(st_astext( location)) AS longEme, st_y(st_astext(location)) AS latEme, ST_Contains(d.geom, e.location) as st_contains, salida2.nom_reg , salida2.nombre, salida2.long, salida2.lat FROM (SELECT salida.gid, salida.nom_reg , salida.nombre, salida.long, salida.lat FROM (SELECT d.gid,d.nom_reg,v.id, v.nombre, st_x(st_astext( location)) AS long, st_y(st_astext(location)) AS lat,  ST_Contains(d.geom, v.location) as st_contains FROM division_regional d, voluntario v WHERE v.id = :id_voluntario) as salida WHERE salida.st_contains = true) as salida2, emergencia e, division_regional d WHERE salida2.gid = d.gid) as salida3 WHERE salida3.st_contains = true;";

            final String query = "SELECT salida3.idE as id, salida3.nombreE as nombre, salida3.descripE as descrip, salida3.finicioE as finicio, salida3.ffinE as ffin, salida3.longE as longitude, salida3.latE as latitude, salida3.id_institucion as id_institucion FROM (SELECT *, ST_Contains(d.geom, e.location) as st1, e.id as idE, e.nombre as nombreE, e.descrip as descripE, e.finicio as finicioE, e.ffin as ffinE, st_x(st_astext( e.location)) AS longE, st_y(st_astext(e.location)) AS latE, e.id_institucion as id_institucionE FROM (SELECT * FROM (SELECT *, ST_Contains(d.geom, v.location) FROM division_regional d,voluntario v WHERE v.id=:id_voluntario) as salida1 WHERE salida1.st_contains = true) salida2, emergencia e, division_regional d WHERE salida2.gid = d.gid) as salida3 WHERE salida3.st1 = true";

            return conn.createQuery(query)
                    .addParameter("id_voluntario", id_voluntario)
                    .executeAndFetch(Emergencia.class);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    
    // @Override
    // public List<Emergencia> emergenciasByFecha(Date finicio, Date ffin){
    //     try(Connection conn = sql2o.open()){
    //         final String query = "SELECT * FROM (SELECT e.id, e.nombre, st_x(st_astext( location)) AS longEme, st_y(st_astext(location)) AS latEme, ST_Contains(d.geom, e.location) as st_contains, salida2.nom_reg , salida2.nombre, salida2.long, salida2.lat FROM (SELECT salida.gid, salida.nom_reg , salida.nombre, salida.long, salida.lat FROM (SELECT d.gid,d.nom_reg,v.id, v.nombre, st_x(st_astext( location)) AS long, st_y(st_astext(location)) AS lat,  ST_Contains(d.geom, v.location) as st_contains FROM division_regional d, voluntario v WHERE v.id = :id_voluntario) as salida WHERE salida.st_contains = true) as salida2, emergencia e, division_regional d WHERE salida2.gid = d.gid) as salida3 WHERE salida3.st_contains = true;";
    //         mejor opcion
    //         final String query = "SELECT salida3.id, emergencia.nombre, emergencia.descrip, emergencia.finicio, emergencia.ffin FROM (SELECT e.id, e.nombre as nombreEmergencia, st_x(st_astext( location)) AS longEme, st_y(st_astext(location)) AS latEme, ST_Contains(d.geom, e.location) as st_contains, salida2.nom_reg , salida2.nombre, salida2.long, salida2.lat FROM (SELECT salida.gid, salida.nom_reg , salida.nombre, salida.long, salida.lat FROM (SELECT d.gid,d.nom_reg,v.id, v.nombre, st_x(st_astext( location)) AS long, st_y(st_astext(location)) AS lat,  ST_Contains(d.geom, v.location) as st_contains FROM division_regional d, voluntario v WHERE v.id = :id_voluntario) as salida WHERE salida.st_contains = true) as salida2, emergencia e, division_regional d WHERE salida2.gid = d.gid) as salida3, emergencia WHERE salida3.st_contains = true AND salida3.id = emergencia.id;";
    //         final String query = "SELECT * FROM (SELECT e.id, e.nombre as nombreEmergencia, st_x(st_astext( location)) AS longEme, st_y(st_astext(location)) AS latEme, ST_Contains(d.geom, e.location) as st_contains, salida2.nom_reg , salida2.nombre, salida2.long, salida2.lat FROM (SELECT salida.gid, salida.nom_reg , salida.nombre, salida.long, salida.lat FROM (SELECT d.gid,d.nom_reg,v.id, v.nombre, st_x(st_astext( location)) AS long, st_y(st_astext(location)) AS lat,  ST_Contains(d.geom, v.location) as st_contains FROM division_regional d, voluntario v WHERE v.id = :id_voluntario) as salida WHERE salida.st_contains = true) as salida2, emergencia e, division_regional d WHERE salida2.gid = d.gid) as salida3 WHERE salida3.st_contains = true;";

    //         final String query = "SELECT * FROM emergencia WHERE emergencia";

    //         return conn.createQuery(query)
    //                 .addParameter("id_voluntario", id_voluntario)
    //                 .executeAndFetch(Emergencia.class);
    //     } catch (Exception e) {
    //         System.out.println(e.getMessage());
    //         return null;
    //     }
    // }

    
    @Override
    public List<Consulta35> habilidadesPorEmergencia(Integer id_emergencia){
        try(Connection conn = sql2o.open()){
                    
                    final String query = "SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea0 t, tarea_habilidad0 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea0 t, tarea_habilidad1 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea0 t, tarea_habilidad2 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea1 t, tarea_habilidad0 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea1 t, tarea_habilidad1 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea1 t, tarea_habilidad2 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea2 t, tarea_habilidad0 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea2 t, tarea_habilidad1 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id UNION ALL SELECT t.nombre as nombreTarea, h.descrip as habilidad, t.nombre_tabla as nombreTablaTarea, th.nombre_tabla as nombreTablaTh FROM emergencia e, tarea2 t, tarea_habilidad2 th, eme_habilidad eh, habilidad h WHERE e.id=:id_emergencia and t.id_emergencia=:id_emergencia and eh.id_emergencia=:id_emergencia and h.id=eh.id_habilidad and t.id=th.id_tarea and th.id_emehab=eh.id";
                    
                    return conn.createQuery(query)
                            .addParameter("id_emergencia", id_emergencia)
                            .executeAndFetch(Consulta35.class);
                } catch (Exception e) {
                    System.out.println(e.getMessage());
                    return null;
                }
    }
}

