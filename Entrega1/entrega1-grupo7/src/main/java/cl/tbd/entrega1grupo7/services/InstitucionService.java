package cl.tbd.entrega1grupo7.services;

import cl.tbd.entrega1grupo7.models.Institucion;
import cl.tbd.entrega1grupo7.repositories.InstitucionRepository;

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
public class InstitucionService {

    private final InstitucionRepository institucionRepository;
    InstitucionService(InstitucionRepository institucionRepository){
        this.institucionRepository = institucionRepository;
    }

    @GetMapping("/instituciones")
    public List<Institucion> getAllInstituciones() {
        //return "Hello World";
        return institucionRepository.getAllInstituciones();
    }

    @GetMapping("/instituciones/count")
    public String countInstituciones(){
        int total = institucionRepository.countInstituciones();
        return String.format("Tienes %s instituciones!!", total);
    }

    @PostMapping("/instituciones")
    @ResponseBody
    public Institucion createInsitucion(@RequestBody Institucion institucion){
        Institucion result = institucionRepository.createInstitucion(institucion);
        return result;
    }

    @PutMapping("/instituciones/{id}")
    @ResponseBody
    public Institucion updateInstitucion(@RequestBody Institucion institucion, @PathVariable Integer id){
        Institucion result = institucionRepository.updateInstitucion(institucion, id);
        return result;
    }

    @DeleteMapping("/instituciones/{id}")
    @ResponseBody
    public List<Institucion> deleteInstitucion(@PathVariable Integer id){
        institucionRepository.deleteInstitucion(id);
        return institucionRepository.getAllInstituciones();
    }
}
