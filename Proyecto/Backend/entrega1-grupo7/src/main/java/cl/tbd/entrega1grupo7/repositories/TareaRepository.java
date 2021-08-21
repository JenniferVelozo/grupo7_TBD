// /*package cl.tbd.entrega1grupo7.repositories;
// import java.util.List;
// import cl.tbd.entrega1grupo7.models.Tarea;

// public interface TareaRepository {
//     public int countTareas();
//     public List<Tarea> getAllTareas();
//     public List<Tarea> filtrarTareas(Integer id);
//     public Tarea createTarea(Tarea tarea);
//     public Tarea updateTarea(Tarea tarea, Integer id);
//     public List<Tarea> deleteTarea(Integer id);
// }*/

// package cl.tbd.entrega1grupo7;
// import java.util.List;
// import cl.tbd.entrega1grupo7.models.Tarea;
// import org.springframework.data.mongodb.repository.MongoRepository;
// import org.springframework.data.repository.query.Param;
// import org.springframework.data.rest.core.annotation.RepositoryRestResource;

// @RepositoryRestResource(collectionResourceRel = "Tarea", path = "tareas")
// public interface TareaRepository extends MongoRepository<Tarea, String> {
// 	List<Tarea> findByName(@Param("nombre") String nombre);

// }    

package cl.tbd.entrega1grupo7.repositories;

import java.util.List;

import org.bson.Document;

import cl.tbd.entrega1grupo7.models.Tarea;
import cl.tbd.entrega1grupo7.models.Voluntario;
import org.bson.types.ObjectId;
import com.mongodb.client.FindIterable;
import com.mongodb.client.AggregateIterable;


public interface TareaRepository {
    public int countTareas();
    public List<Tarea> getTareas();
    public Tarea createTarea(Tarea tarea);
    public Tarea showTarea(String nombre);
    public List<Voluntario> voluntariosEnTarea(String nombre);
}