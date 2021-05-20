package cl.tbd.entrega1grupo7.repositories;

import cl.tbd.entrega1grupo7.models.Ranking;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class RankingRepositoryImp implements RankingRepository {

    @Autowired
    private Sql2o sql2o;

    @Override
    public int countRankings() {
        int total = 0;
        try(Connection conn = sql2o.open()){
            total = conn.createQuery("SELECT COUNT(*) FROM ranking").executeScalar(Integer.class);
        }
        return total;
    }

    @Override
    public List<Ranking> getAllRankings() {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("select * from ranking")
                    .executeAndFetch(Ranking.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public Ranking createRanking(Ranking ranking) {
        try(Connection conn = sql2o.open()){
            //int insertedId = (int) 
            conn.createQuery("INSERT INTO ranking (id, puntaje, id_voluntario, id_tarea, flg_invitado, flg_participa) values (:id, :puntaje, :id_voluntario, :id_tarea, :flg_invitado, :flg_participa)", true)
                    .addParameter("id", ranking.getId())
                    .addParameter("puntaje", ranking.getPuntaje())
                    .addParameter("id_voluntario", ranking.getIdVoluntario())
                    .addParameter("id_tarea", ranking.getIdTarea())
                    .addParameter("flg_invitado", ranking.getFlgInvitado())
                    .addParameter("flg_participa", ranking.getFlgParticipa())
                    .executeUpdate();//.getKey();
            //emergencia.setId(insertedId);
            return ranking;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }
     @Override
    public Ranking updateRanking(Ranking ranking, Integer id) {
        try(Connection conn = sql2o.open()){
            //int insertedId = (int) 
            conn.createQuery("UPDATE ranking SET puntaje = :puntaje, id_voluntario = :id_voluntario, id_tarea = :id_tarea, flg_invitado = :flg_invitado, flg_participa = :flg_participa WHERE id = :id" , true)
                    .addParameter("id", ranking.getId())
                    .addParameter("puntaje", ranking.getPuntaje())
                    .addParameter("id_voluntario", ranking.getIdVoluntario())
                    .addParameter("id_tarea", ranking.getIdTarea())
                    .addParameter("flg_invitado", ranking.getFlgInvitado())
                    .addParameter("flg_participa", ranking.getFlgParticipa())
                    .executeUpdate();//.getKey();
            //emergencia.setId(insertedId);
            return ranking;        
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }   
    }

    @Override
    public List<Ranking> deleteRanking(Integer id) {
        try(Connection conn = sql2o.open()){
            return conn.createQuery("DELETE FROM ranking WHERE id = :id")
                    .addParameter("id", id)
                    .executeAndFetch(Ranking.class);
        } catch (Exception e) {
            //System.out.println(e.getMessage());
            System.out.println(e.getMessage());
            return null;
        }
    }
}