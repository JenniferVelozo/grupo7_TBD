package cl.tbd.entrega1grupo7.models;

public class Ranking {
    private Integer id;
    private Integer puntaje;
    private Integer id_voluntario;
    private Integer id_tarea;
    private Integer flg_invitado;
    private Integer flg_participa;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPuntaje() {
        return puntaje;
    }

    public void setPuntaje(Integer puntaje){
        this.puntaje = puntaje;
    }

    public Integer getIdVoluntario() {
        return id_voluntario;
    }

    public void setIdVoluntario(Integer id_voluntario){
        this.id_voluntario = id_voluntario;
    }

    public Integer getIdTarea() {
        return id_tarea;
    }

    public void setIdTarea(Integer id_tarea){
        this.id_tarea = id_tarea;
    }

    public Integer getFlgInvitado() {
        return flg_invitado;
    }

    public void setFlgInvitado(Integer flg_invitado){
        this.flg_invitado = flg_invitado;
    }

    public Integer getFlgParticipa() {
        return flg_participa;
    }

    public void setFlgParticipa(Integer flg_participa){
        this.flg_participa = flg_participa;
    }
}