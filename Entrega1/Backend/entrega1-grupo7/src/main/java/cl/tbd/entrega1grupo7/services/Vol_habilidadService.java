package cl.tbd.entrega1grupo7.services;

import cl.tbd.entrega1grupo7.models.Vol_habilidad;
import cl.tbd.entrega1grupo7.repositories.Vol_habilidadRepository;

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
public class Vol_habilidadService {

    private final Vol_habilidadRepository vol_habilidadRepository;
    Vol_habilidadService(Vol_habilidadRepository vol_habilidadRepository){
        this.vol_habilidadRepository = vol_habilidadRepository;
    }

    @GetMapping("/vol_habilidades")
    public List<Vol_habilidad> getAllVol_habilidades() {
        //return "Hello World";
        return vol_habilidadRepository.getAllVol_habilidades();
    }

    @GetMapping("/vol_habilidades/count")
    public String countVol_habilidades(){
        int total = vol_habilidadRepository.countVol_habilidades();
        return String.format("Tienes %s vol_habilidades!!", total);
    }

    @PostMapping("/vol_habilidades")
    @ResponseBody
    public Vol_habilidad createVol_habilidad(@RequestBody Vol_habilidad vol_habilidad){
        Vol_habilidad result = vol_habilidadRepository.createVol_habilidad(vol_habilidad);
        return result;
    }

    @PutMapping("/vol_habilidades/{id}")
    @ResponseBody
    public Vol_habilidad updateVol_habilidad(@RequestBody Vol_habilidad vol_habilidad, @PathVariable Integer id){
        Vol_habilidad result = vol_habilidadRepository.updateVol_habilidad(vol_habilidad, id);
        return result;
    }

    @DeleteMapping("/vol_habilidades/{id}")
    @ResponseBody
    public List<Vol_habilidad> deleteVol_habilidad(@PathVariable Integer id){
        vol_habilidadRepository.deleteVol_habilidad(id);
        return vol_habilidadRepository.getAllVol_habilidades();
    }
}