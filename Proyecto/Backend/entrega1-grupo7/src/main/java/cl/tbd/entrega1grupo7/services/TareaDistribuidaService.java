package cl.tbd.entrega1grupo7.services;

import cl.tbd.entrega1grupo7.models.TareaDistribuida;
import cl.tbd.entrega1grupo7.repositories.TareaDistribuidaRepository;

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
public class TareaDistribuidaService {

    private final TareaDistribuidaRepository tareaDistribuidaRepository;
    TareaDistribuidaService(TareaDistribuidaRepository tareaRepository){
        this.tareaDistribuidaRepository = tareaRepository;
    }

    @GetMapping("/tareas")
    public List<TareaDistribuida> getAllTareas() {
        //return "Hello World";
        return tareaDistribuidaRepository.getAllTareas();
    }

    @GetMapping("/tareas/count")
    public String countTareas(){
        int total = tareaDistribuidaRepository.countTareas();
        return String.format("Tienes %s tareas!!", total);
    }

    @GetMapping("/tareas/{id}")
    public List<TareaDistribuida> filtrarTareas(@PathVariable Integer id) {
        //return "Hello World";
        return tareaDistribuidaRepository.filtrarTareas(id);
    }

    @PostMapping("/tareas")
    @ResponseBody
    public TareaDistribuida createTarea(@RequestBody TareaDistribuida tarea){
        TareaDistribuida result = tareaDistribuidaRepository.createTarea(tarea);
        return result;
    }

    @PutMapping("/tareas/{id}")
    @ResponseBody
    public TareaDistribuida updateTarea(@RequestBody TareaDistribuida tarea, @PathVariable Integer id){
        TareaDistribuida result = tareaDistribuidaRepository.updateTarea(tarea, id);
        return result;
    }

    @DeleteMapping("/tareas/{id}")
    @ResponseBody
    public List<TareaDistribuida> deleteTarea(@PathVariable Integer id){
        tareaDistribuidaRepository.deleteTarea(id);
        return tareaDistribuidaRepository.getAllTareas();
    }
}

