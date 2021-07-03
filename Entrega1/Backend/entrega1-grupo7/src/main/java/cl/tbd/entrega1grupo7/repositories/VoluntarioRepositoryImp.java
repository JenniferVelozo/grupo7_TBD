package cl.tbd.entrega1grupo7.repositories;

import cl.tbd.entrega1grupo7.models.Voluntario;
import cl.tbd.entrega1grupo7.models.Ranking;
import cl.tbd.entrega1grupo7.models.Tarea;
import cl.tbd.entrega1grupo7.models.Emergencia;
import org.postgis.Point;
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

    /*@Override
    public List<Voluntario> getAllVoluntarios() {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("select * from voluntario")
                    .executeAndFetch(Voluntario.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }*/

    @Override
    public List<Voluntario> getAllVoluntarios() {
        try(Connection conn = sql2o.open()){
            final String query = "SELECT id, nombre, fnacimiento, st_x(st_astext( location)) AS longitude, st_y(st_astext(location)) AS latitude FROM voluntario;";
            return conn.createQuery(query)
                    .executeAndFetch(Voluntario.class);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    //Versión entrega 1, sin ubicación.
    /*@Override
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
    }*/

    @Override
    public Voluntario createVoluntario(Voluntario voluntario) {
        try(Connection conn = sql2o.open()){
            String query = "INSERT INTO voluntario (id, nombre, fnacimiento, location) " +
            "VALUES (:id, :nombre, :fnacimiento, ST_GeomFromText(:point, 4326))";

            String point = "POINT("+voluntario.getLongitude()+" "+voluntario.getLatitude()+")";
            System.out.println("point: "+point);
            
            //int insertedId = (int) 
            conn.createQuery(query, true)
                    .addParameter("id", voluntario.getId())
                    .addParameter("nombre", voluntario.getNombre())
                    .addParameter("fnacimiento", voluntario.getFnacimiento())
                    .addParameter("point", point)
                    .executeUpdate();//.getKey();
            //dog.setId(insertedId);
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
            String point = "POINT("+voluntario.getLongitude()+" "+voluntario.getLatitude()+")";
            System.out.println("point: "+point);

            conn.createQuery("UPDATE voluntario SET nombre = :nombre, fnacimiento = :fnacimiento, location = ST_GeomFromText(:point, 4326) WHERE id = :id" , true)
                    .addParameter("id", id)
                    .addParameter("nombre", voluntario.getNombre())
                    .addParameter("fnacimiento", voluntario.getFnacimiento())
                    .addParameter("point", point)
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

    @Override
    public String getJson(Integer id) {
        final String query = "SELECT json_build_object("+
            "'type', 'FeatureCollection',"+
            "'features', json_agg(ST_AsGeoJSON(t.geom)::json)"+
            ")"+
        "FROM division_regional_4326 AS t WHERE t.gid = :id;";
        return null;
    }

    @Override
    public List<Voluntario> punto32Vol(Integer menorRanking, Integer id_tarea) {
        try(Connection conn = sql2o.open()){
            final String query = "SELECT v.id, v.nombre, v.fnacimiento FROM voluntario v, ranking r WHERE r.id_tarea = :id_tarea AND r.puntaje = :menorPuntaje AND v.id = r.id_voluntario;";
            return conn.createQuery(query)
                    .addParameter("menorRanking", menorRanking)
                    .addParameter("id_tarea", id_tarea)
                    .executeAndFetch(Voluntario.class);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
}

/*

SELECT id_voluntario, id_tarea, puntaje
	FROM ranking
	GROUP BY id_tarea, id_voluntario, puntaje
	ORDER BY id_voluntario, puntaje, id_tarea
*/