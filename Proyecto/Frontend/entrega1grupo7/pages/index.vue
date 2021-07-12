<template>
    <div class="mt-5">

        <form> <center>
            <div class="form-item">
                <label for="finicio"> Fecha Inicio</label>
                <input type="date" id="finicio" v-model="finicio" name="finicio">
                <label for="ffin">Fecha Fin</label>
                <input type="date" id="ffin" v-model="ffin" name="ffin">
            </div>
                 <button type="button" v-on:click="guardarFechas(finicio, ffin)" class="main"> INGRESAR FECHAS </button>
            <div>
            </div>
        </center> </form>

        <b-row>
            <!--columna 1 -->
            <b-col cols="12" md="6">
                <p> <b> <center> LISTA DE EMERGENCIAS </center> </b> </p>
                <ul class="item-list"> 
                    <li v-for="(emergencia, index) in emergencias" :key="index"> 
                    <!-- <img :src="'https://loremflickr.com/160/120/dog?lock=%27+i%22/%3E--%3E -->
                        <!-- {{index}} -->
                        <p> <b> Nombre: </b> {{emergencia.nombre}}
                        <b> Descripción:</b> {{emergencia.descrip}}
                        <button type="button" v-on:click="buscarTareas(emergencia.id)" class="main"> VER </button>
                        </p>

                                                            
                    </li>

                </ul>

            </b-col>
            
            <!--columna 2 -->
            <b-col cols="12" md="6">
                <p> <b> <center> LISTA DE TAREAS </center> </b> </p>
                <ul class="item-list"> 
                    <li v-for="(tarea, index) in tareasFiltradas" :key="index"> 
                    <!-- <img :src="'https://loremflickr.com/160/120/dog?lock=%27+i%22/%3E--%3E -->
                        <!-- {{index}} -->
                        <p> <b> Nombre Tarea: </b> {{tarea.nombreTarea}}
                        <b> Menor Ranking:</b> {{tarea.puntaje}}
                        <b> Voluntario con el menor ranking:</b> {{tarea.nombreVol}}
                        </p>

                                                            
                    </li>

                </ul>
            </b-col>
        </b-row>
    </div>    
</template>

<script>
export default {
    name:'index',


    data(){
        return{
            //Lista de ítems a mostrar
            emergencias:[],
            tareasFiltradas:[],
            fechaInicio:"",
            fechaFin:""
        }
    },
    methods:{

        //Función asíncrona para consultar los datos
        getDataEmergencia: async function(){            
            try {
                //let response = await this.$axios.get('/tareas/{{item.id}}');
                let response = await this.$axios.get('/emergencias');
                this.emergencias  = response.data;
                console.log(response)
            } catch (error) {
                console.log('error', error);
            }
        },

        buscarTareas: async function(id_emergencia){
            this.message = '';
            //envío de datos del formulario
            console.log('Entre funcion boton')
            try {
                //console.log(this.fechaInicio)
                //console.log(this.fechaFin)
                var result = await this.$axios.get('/voluntarios/' + id_emergencia + '/' + this.fechaInicio + '/' + this.fechaFin);
                console.log('Pasa var result')
                this.tareasFiltradas  = result.data;
                //mensaje de exito 

                //Actualizar página
                //location. reload('/rankings/' + id_voluntario)
                
            } catch (error) {
                console.log('entro al error')
                //mensaje de error
                console.log('error', error)
                this.message = 'Ocurrió un error'
            }
        },

        guardarFechas: async function(finicio, ffin){
            try {
                //let response = await this.$axios.get('/tareas/{{item.id}}');
                this.fechaInicio  = finicio;
                this.fechaFin  = ffin;
            } catch (error) {
                console.log('error', error);
            }
        }
    },

        

    //Función que se ejecuta al cargar el componente
    created:function(){
        this.getDataEmergencia();
    }
    

}
</script>
