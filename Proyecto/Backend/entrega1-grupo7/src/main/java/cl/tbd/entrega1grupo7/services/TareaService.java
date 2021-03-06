/*package cl.tbd.entrega1grupo7.services;

import cl.tbd.entrega1grupo7.models.Tarea;
import cl.tbd.entrega1grupo7.repositories.TareaRepository;

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
public class TareaService {

    private final TareaRepository tareaRepository;
    TareaService(TareaRepository tareaRepository){
        this.tareaRepository = tareaRepository;
    }

    @GetMapping("/tareas")
    public List<Tarea> getAllTareas() {
        //return "Hello World";
        return tareaRepository.getAllTareas();
    }

    @GetMapping("/tareas/count")
    public String countTareas(){
        int total = tareaRepository.countTareas();
        return String.format("Tienes %s tareas!!", total);
    }

    @GetMapping("/tareas/{id}")
    public List<Tarea> filtrarTareas(@PathVariable Integer id) {
        //return "Hello World";
        return tareaRepository.filtrarTareas(id);
    }

    @PostMapping("/tareas")
    @ResponseBody
    public Tarea createTarea(@RequestBody Tarea tarea){
        Tarea result = tareaRepository.createTarea(tarea);
        return result;
    }

    @PutMapping("/tareas/{id}")
    @ResponseBody
    public Tarea updateTarea(@RequestBody Tarea tarea, @PathVariable Integer id){
        Tarea result = tareaRepository.updateTarea(tarea, id);
        return result;
    }

    @DeleteMapping("/tareas/{id}")
    @ResponseBody
    public List<Tarea> deleteTarea(@PathVariable Integer id){
        tareaRepository.deleteTarea(id);
        return tareaRepository.getAllTareas();
    }
}*/


package cl.tbd.entrega1grupo7.services;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.DeleteMapping;

import cl.tbd.entrega1grupo7.models.Tarea;
import cl.tbd.entrega1grupo7.models.Voluntario;
import cl.tbd.entrega1grupo7.repositories.TareaRepository;
import org.bson.types.ObjectId;
import org.bson.Document;
import com.mongodb.client.FindIterable;
import com.mongodb.client.AggregateIterable;

@RestController
public class TareaService {
    
    private final TareaRepository tareaRepository;
    TareaService(TareaRepository tareaRepository){
        this.tareaRepository = tareaRepository;
    }
    @GetMapping("/tareasmongo/count")
    public String countTareas(){
        int total = tareaRepository.countTareas();
        return String.format("Tienes %s tareas!!", total);
    }

    @GetMapping("/tareasmongo")
    public List<Tarea> getTareas(){
        return tareaRepository.getTareas();
    }

    @PostMapping("/tareasmongo")
    @ResponseBody
    public Tarea createTarea(@RequestBody Tarea tarea){
        Tarea result = tareaRepository.createTarea(tarea);
        return result;
    }


    @GetMapping("/tareasmongo/{nombre}")
    public Tarea showTarea(@PathVariable String nombre){
        return tareaRepository.showTarea(nombre);
    }

    
    @GetMapping("/tareasmongo/voluntarios/{nombre}")
    @ResponseBody
    public List<Voluntario> voluntariosEnTarea(@PathVariable String nombre){
        List<Voluntario> result = tareaRepository.voluntariosEnTarea(nombre);
        return result;
    }

}