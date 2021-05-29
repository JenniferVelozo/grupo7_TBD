package cl.tbd.entrega1grupo7.services;

import cl.tbd.entrega1grupo7.models.Ranking;
import cl.tbd.entrega1grupo7.repositories.RankingRepository;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@CrossOrigin
@RestController
public class RankingService {

    private final RankingRepository rankingRepository;
    RankingService(RankingRepository rankingRepository){
        this.rankingRepository = rankingRepository;
    }

    @GetMapping("/rankings")
    public List<Ranking> getAllRankings() {
        //return "Hello World";
        return rankingRepository.getAllRankings();
    }

    @GetMapping("/rankings/count")
    public String countRankings(){
        int total = rankingRepository.countRankings();
        return String.format("Tienes %s rankings!!", total);
    }

    @PostMapping("/rankings")
    @ResponseBody
    public Ranking createRanking(@RequestBody Ranking ranking){
        Ranking result = rankingRepository.createRanking(ranking);
        return result;
    }

    @PutMapping("/rankings/{id}")
    @ResponseBody
    public Ranking updateRanking(@RequestBody Ranking ranking, @PathVariable Integer id){
        Ranking result = rankingRepository.updateRanking(ranking, id);
        return result;
    }

    @PutMapping("/rankings/{id_voluntario}/{id_tarea}/{flg_participa}")
    @ResponseBody
    public void updateRankingByTarea(@PathVariable Integer id_voluntario, @PathVariable Integer id_tarea, @PathVariable Integer flg_participa){
        rankingRepository.updateRankingByTarea(id_tarea, id_voluntario, flg_participa);
    }

    @DeleteMapping("/rankings/{id}")
    @ResponseBody
    public List<Ranking> deleteRanking(@PathVariable Integer id){
        rankingRepository.deleteRanking(id);
        return rankingRepository.getAllRankings();
    }
}
