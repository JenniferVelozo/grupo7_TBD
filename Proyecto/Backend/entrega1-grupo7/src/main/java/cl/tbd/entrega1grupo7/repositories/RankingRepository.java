package cl.tbd.entrega1grupo7.repositories;
import java.util.List;
import cl.tbd.entrega1grupo7.models.Ranking;

public interface RankingRepository {
    public int countRankings();
    public List<Ranking> getAllRankings();
    public Ranking createRanking(Ranking ranking);
    public Ranking updateRanking(Ranking ranking, Integer id);
    public void updateRankingByTarea(Integer id_tarea, Integer id_voluntario, Integer flg_participa);
    public List<Ranking> deleteRanking(Integer id);
}