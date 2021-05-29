package cl.tbd.entrega1grupo7.services;

import cl.tbd.entrega1grupo7.models.Habilidad;
import cl.tbd.entrega1grupo7.repositories.HabilidadRepository;

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
public class HabilidadService {

    private final HabilidadRepository habilidadRepository;
    HabilidadService(HabilidadRepository habilidadRepository){
        this.habilidadRepository = habilidadRepository;
    }

    @GetMapping("/habilidades")
    public List<Habilidad> getAllHabilidades() {
        //return "Hello World";
        return habilidadRepository.getAllHabilidades();
    }

    @GetMapping("/habilidades/count")
    public String countHabilidades(){
        int total = habilidadRepository.countHabilidades();
        return String.format("Tienes %s habilidades!!", total);
    }

    @PostMapping("/habilidades")
    @ResponseBody
    public Habilidad createHabilidad(@RequestBody Habilidad habilidad){
        Habilidad result = habilidadRepository.createHabilidad(habilidad);
        return result;
    }

    @PutMapping("/habilidades/{id}")
    @ResponseBody
    public Habilidad updateHabilidad(@RequestBody Habilidad habilidad, @PathVariable Integer id){
        Habilidad result = habilidadRepository.updateHabilidad(habilidad, id);
        return result;
    }

    @DeleteMapping("/habilidades/{id}")
    @ResponseBody
    public List<Habilidad> deleteHabilidad(@PathVariable Integer id){
        habilidadRepository.deleteHabilidad(id);
        return habilidadRepository.getAllHabilidades();
    }
}
