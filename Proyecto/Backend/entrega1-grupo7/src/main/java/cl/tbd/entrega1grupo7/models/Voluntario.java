package cl.tbd.entrega1grupo7.models;
import java.util.Date;
import org.postgis.PGgeometry;
import org.postgis.Point;

public class Voluntario {
    private Integer id;
    private String nombre;
    private Date fnacimiento;
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

    public Date getFnacimiento() {
        return fnacimiento;
    }

    public void setFnacimiento(Date fnacimiento) {
        this.fnacimiento = fnacimiento;
    }

    /*public PGgeometry getLocation() {
        return location;
    }
    public void setLocation(PGgeometry location) {
        this.location = location;
    }*/
    
}