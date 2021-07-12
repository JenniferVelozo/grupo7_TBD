package cl.tbd.entrega1grupo7.models;
import java.util.Date;
import org.postgis.PGgeometry;
import org.postgis.Point;

public class Emergencia {
    private Integer id;
    private String nombre;
    private String descrip;
    private Date finicio;
    private Date ffin;
    private Integer id_institucion;
    private double longitude;
    private double latitude;
    //private PGgeometry location;
    
    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(float latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Integer getIdInstitucion() {
        return id_institucion;
    }

    public void setIdInstitucion(Integer id_institucion) {
        this.id_institucion = id_institucion;
    }

    /*public PGgeometry getLocation() {
        return location;
    }
    public void setLocation(PGgeometry location) {
        this.location = location;
    }*/
}