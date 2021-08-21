/* Modelo a modificar */
package cl.tbd.entrega1grupo7.models;
import java.util.Date;
import org.postgis.PGgeometry;
import org.postgis.Point;
import org.bson.codecs.pojo.annotations.BsonId;
import org.bson.types.ObjectId;

public class Voluntario {

    @BsonId
    ObjectId _id;

    private String nombre;
    private String nombreTarea;
    private Date fnacimiento;
    //private double longitude;
    //private double latitude;
    //private PGgeometry location;

    /*
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