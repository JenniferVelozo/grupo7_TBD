/* Modelo a modificar */
//package cl.tbd.entrega1grupo7.models;

package cl.tbd.entrega1grupo7.models;

//import org.springframework.data.annotation.Id;
import org.bson.codecs.pojo.annotations.BsonId;
import org.bson.types.ObjectId;
import cl.tbd.entrega1grupo7.models.Voluntario;
import java.util.Date;
import java.util.List;

public class Tarea {

    //@Id private String id;
    @BsonId
    ObjectId _id;

    private String nombre;
    private String descrip;
    private Integer cant_vol_requeridos;
    private Integer cant_vol_inscritos;
    private Integer id_emergencia;
    private Date finicio;
    private Date ffin;
    private Integer id_estado;
    private List<Voluntario> voluntarios;

    public void setVoluntarios(List<Voluntario> voluntarios) {
        this.voluntarios = voluntarios;
    }

    public List<Voluntario> getVol() {
        return voluntarios;
    }

    /*public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }*/

    public ObjectId getId() {
        return this._id;
    }

    public void setId(ObjectId id) {
        this._id = id;
    }
    public String getStringId(){
        return this._id.toString();
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescrip() {
        return descrip;
    }

    public void setDescrip(String descrip) {
        this.descrip = descrip;
    }

    public Integer getCant_vol_requeridos() {
        return cant_vol_requeridos;
    }

    public void setCant_vol_requeridos(Integer cant_vol_requeridos) {
        this.cant_vol_requeridos = cant_vol_requeridos;
    }

    public Integer getCant_vol_inscritos() {
        return cant_vol_inscritos;
    }

    public void setCant_vol_inscritos(Integer cant_vol_inscritos) {
        this.cant_vol_inscritos = cant_vol_inscritos;
    }
    
    public Integer getId_emergencia() {
        return id_emergencia;
    }

    public void setId_emergencia(Integer id_emergencia) {
        this.id_emergencia = id_emergencia;
    }

    public Date getFinicio() {
        return finicio;
    }

    public void setFinicio(Date finicio) {
        this.finicio = finicio;
    }
    
    public Date getFfin() {
        return ffin;
    }

    public void setFfin(Date ffin) {
        this.ffin = ffin;
    }

    public Integer getId_estado() {
        return id_estado;
    }

    public void setId_estado(Integer id_estado) {
        this.id_estado = id_estado;
    }
}