package cl.tbd.entrega1grupo7.services;

import cl.tbd.entrega1grupo7.models.Estado_tarea;
import cl.tbd.entrega1grupo7.repositories.Estado_tareaRepository;

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
public class Estado_tareaService {

    private final Estado_tareaRepository estado_tareaRepository;
    Estado_tareaService(Estado_tareaRepository estado_tareaRepository){
        this.estado_tareaRepository = estado_tareaRepository;
    }

    @GetMapping("/estado_tareas")
    public List<Estado_tarea> getAllEstado_tareas() {
        //return "Hello World";
        return estado_tareaRepository.getAllEstado_tareas();
    }

    @GetMapping("/estado_tareas/count")
    public String countEstado_tareas(){
        int total = estado_tareaRepository.countEstado_tareas();
        return String.format("Tienes %s estado_tareas!!", total);
    }

    @PostMapping("/estado_tareas")
    @ResponseBody
    public Estado_tarea createEstado_tarea(@RequestBody Estado_tarea estado_tarea){
        Estado_tarea result = estado_tareaRepository.createEstado_tarea(estado_tarea);
        return result;
    }

    @PutMapping("/estado_tareas/{id}")
    @ResponseBody
    public Estado_tarea updateEstado_tarea(@RequestBody Estado_tarea estado_tarea, @PathVariable Integer id){
        Estado_tarea result = estado_tareaRepository.updateEstado_tarea(estado_tarea, id);
        return result;
    }

    @DeleteMapping("/estado_tareas/{id}")
    @ResponseBody
    public List<Estado_tarea> deleteEstado_tarea(@PathVariable Integer id){
        estado_tareaRepository.deleteEstado_tarea(id);
        return estado_tareaRepository.getAllEstado_tareas();
    }
}