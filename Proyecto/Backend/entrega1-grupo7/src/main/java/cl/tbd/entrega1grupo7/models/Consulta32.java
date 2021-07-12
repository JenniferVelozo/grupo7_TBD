package cl.tbd.entrega1grupo7.models;

public class Consulta32 {
    private Integer id_voluntario;
    private String nombreVol;
    private Integer id_tarea;
    private String nombreTarea;
    private Integer puntaje;

    public Integer getIdVol() {
        return id_voluntario;
    }

    public void setIdVol(Integer id) {
        this.id_voluntario = id;
    }

    public String getNombreVol() {
        return nombreVol;
    }

    public void setNombreVol(String nombreVol){
        this.nombreVol = nombreVol;
    }


    public Integer getIdTarea() {
        return id_tarea;
    }

    public void setIdTarea(Integer id_tarea){
        this.id_tarea = id_tarea;
    }

    public String getNombreTarea() {
        return nombreTarea;
    }

    public void setNombreTarea(String nombreTarea){
        this.nombreTarea = nombreTarea;
    }

    public Integer getPuntaje() {
        return puntaje;
    }

    public void setPuntaje(Integer puntaje){
        this.puntaje = puntaje;
    }
}