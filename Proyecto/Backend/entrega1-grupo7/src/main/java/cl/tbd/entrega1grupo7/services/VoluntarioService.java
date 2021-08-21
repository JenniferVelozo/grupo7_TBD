/*package cl.tbd.entrega1grupo7.services;

import cl.tbd.entrega1grupo7.models.Voluntario;
import cl.tbd.entrega1grupo7.models.Consulta32;
import cl.tbd.entrega1grupo7.repositories.VoluntarioRepository;

import org.postgis.Geometry;
import org.postgis.PGgeometry;
import org.postgis.Point;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.sql.Date;
import java.util.List;

@CrossOrigin
@RestController
public class VoluntarioService {

    private final VoluntarioRepository voluntarioRepository;
    VoluntarioService(VoluntarioRepository voluntarioRepository){
        this.voluntarioRepository = voluntarioRepository;
    }

    @GetMapping("/voluntarios")
    public List<Voluntario> getAllVoluntarios() {
        //return "Hello World";
        return voluntarioRepository.getAllVoluntarios();
    }

    @GetMapping("/voluntarios/count")
    public String countVoluntarios(){
        int total = voluntarioRepository.countVoluntarios();
        return String.format("Tienes %s Voluntarios!!", total);
    }

    @PostMapping("/voluntarios")
    @ResponseBody
    public Voluntario createVoluntario(@RequestBody Voluntario voluntario){
        Voluntario result = voluntarioRepository.createVoluntario(voluntario);
        return result;
    }

    @PutMapping("/voluntarios/{id}")
    @ResponseBody
    public Voluntario updateVoluntario(@RequestBody Voluntario voluntario, @PathVariable Integer id){
        Voluntario result = voluntarioRepository.updateVoluntario(voluntario, id);
        return result;
    }

    @DeleteMapping("/voluntarios/{id}")
    @ResponseBody
    public List<Voluntario> deleteVoluntario(@PathVariable Integer id){
        voluntarioRepository.deleteVoluntario(id);
        return voluntarioRepository.getAllVoluntarios();
    }

    @GetMapping("/voluntarios/{id_emergencia}/{finicio}/{ffin}")
    public List<Consulta32> voluntariosByTareas(@PathVariable Integer id_emergencia, @PathVariable Date finicio, @PathVariable Date ffin){
        return voluntarioRepository.voluntariosByTareas(id_emergencia, finicio, ffin);
    }


    //You can consume the path .../getAmount/2019-04-25
    // @GetMapping("/getAmount/{dateTo}")
    // public long getAmount(@PathVariable("dateTo") @DateTimeFormat(pattern = "yyyy-MM-dd") Date dateTo) {
    //     long amountFetchedFromDb = callToDatabase(dateTo);
    //     return amountFetchedFromDb;
    // }
}*/

package cl.tbd.entrega1grupo7.services;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import cl.tbd.entrega1grupo7.models.Voluntario;
import cl.tbd.entrega1grupo7.repositories.VoluntarioRepository;

@RestController
public class VoluntarioService {
    
    private final VoluntarioRepository voluntarioRepository;
    VoluntarioService(VoluntarioRepository voluntarioRepository){
        this.voluntarioRepository = voluntarioRepository;
    }
    @GetMapping("/voluntarios/count")
    public String countVoluntarios(){
        int total = voluntarioRepository.countVoluntarios();
        return String.format("Tienes %s voluntarios!!", total);
    }

    @GetMapping("/voluntarios")
    public List<Voluntario> getVoluntarios(){
        return voluntarioRepository.getVoluntarios();
    }

    @PostMapping("/voluntarios")
    @ResponseBody
    public Voluntario createVoluntario(@RequestBody Voluntario voluntario){
        Voluntario result = voluntarioRepository.createVoluntario(voluntario);
        return result;
    }

}