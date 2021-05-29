package cl.tbd.entrega1grupo7.services;

import cl.tbd.entrega1grupo7.models.Emergencia;
import cl.tbd.entrega1grupo7.repositories.EmergenciaRepository;

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
public class EmergenciaService {

    private final EmergenciaRepository emergenciaRepository;
    EmergenciaService(EmergenciaRepository emergenciaRepository){
        this.emergenciaRepository = emergenciaRepository;
    }

    @GetMapping("/emergencias")
    public List<Emergencia> getAllEmergencias() {
        //return "Hello World";
        return emergenciaRepository.getAllEmergencias();
    }

    @GetMapping("/emergencias/count")
    public String countEmergencias(){
        int total = emergenciaRepository.countEmergencias();
        return String.format("Tienes %s emergencias!!", total);
    }

    @PostMapping("/emergencias")
    @ResponseBody
    public Emergencia createEmergencia(@RequestBody Emergencia emergencia){
        Emergencia result = emergenciaRepository.createEmergencia(emergencia);
        return result;
    }

    @PutMapping("/emergencias/{id}")
    @ResponseBody
    public Emergencia updateEmergencia(@RequestBody Emergencia emergencia, @PathVariable Integer id){
        Emergencia result = emergenciaRepository.updateEmergencia(emergencia, id);
        return result;
    }

    @DeleteMapping("/emergencias/{id}")
    @ResponseBody
    public List<Emergencia> deleteEmergencia(@PathVariable Integer id){
        emergenciaRepository.deleteEmergencia(id);
        return emergenciaRepository.getAllEmergencias();
    }
}
