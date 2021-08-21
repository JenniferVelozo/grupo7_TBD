package cl.tbd.entrega1grupo7.models;

public class Tarea_habilidad {
    private String nombre_tabla;
    private Integer id;
    private Integer id_emehab;
    private Integer id_tarea;

    public String getNombreTabla() {
        return nombre_tabla;
    }

    public void setNombreTabla(String nombre_tabla) {
        this.nombre_tabla = nombre_tabla;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdEmehab() {
        return id_emehab;
    }
    public void setIdEmehab(Integer id_emehab) {
        this.id_emehab = id_emehab;
    }

    public Integer getIdTarea() {
        return id_tarea;
    }

    public void setIdTarea(Integer id_tarea) {
        this.id_tarea = id_tarea;
    }
    
}