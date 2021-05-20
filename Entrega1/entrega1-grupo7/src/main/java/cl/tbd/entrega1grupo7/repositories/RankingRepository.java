package cl.tbd.entrega1grupo7.repositories;
import java.util.List;
import cl.tbd.entrega1grupo7.models.Ranking;

public interface RankingRepository {
    public int countRankings();
    public List<Ranking> getAllRankings();
    public Ranking createRanking(Ranking ranking);
}