<template>
    <div class="container">

    <h1>Buscar voluntario</h1>
    <form>
        <div class="form-item">
            <label for="id_voluntario">ID voluntario</label>
            <input type="number" id="id_voluntario" v-model="id_voluntario" name="id_voluntario">
        </div>
        <div>
            <button type="button" v-on:click="getData(id_voluntario)" class="main"> Buscar</button>
        </div>
    </form>
    

    <h1>Tareas del voluntario</h1>
    <ul class="item-list">
      <li v-for="(item, index) in items" :key="index">
       <!-- <img :src="'https://loremflickr.com/160/120/dog?lock=%27+i%22/%3E--%3E -->
        <!-- {{index}} -->
        <p>Nombre Tarea: {{item.nombre}}
        Descripción: {{item.descrip}}
        Fecha de Inicio: {{item.finicio}}
        Fecha de Término: {{item.ffin}}</p>
        <p>
        <button type="button" v-on:click="send(item.id, id_voluntario)" class="main">Aceptar</button>
        Rechazar
        Cancelar
        Terminar
        </p>  
      </li>

    </ul>
    <div v-if="items.length==0" class="empty-list">
      <em>No se han cargado los datos</em>
    </div>
  </div>
</template>
<script>
export default {
    //Función que contiene los datos del componente
    data(){
        return{
            //Lista de ítems a mostrar
            items:[]
        }
    },
    methods:{

        
        //Función asíncrona para consultar los datos
        getData: async function(id_voluntario){

            
            
            try {
                //let response = await this.$axios.get('/tareas/{{item.id}}');
                //console.log('get data');
                console.log(id_voluntario);
                let response = await this.$axios.get('/tareas/' + id_voluntario);
                this.items  = response.data;
                console.log(response)
            } catch (error) {
                console.log('error', error);
            }
        },
        send: async function(id_tarea, id_voluntario){
            this.message = '';
            //envío de datos del formulario
            console.log('Entre funcion boton')
            try {
                console.log(id_tarea)
                //var result = await this.$axios.put('/rankings/824/{id_tarea}/2');
                var result = await this.$axios.put('/rankings/' + id_voluntario + '/' + id_tarea + '/2');
                console.log('Pasa var result')
                let ranking = result.data;
                //mensaje de exito 
                this.message = `Se actualizó el ranking con flg_participa: ${ranking.flg_participa}`;

                //Actualizar página
                location. reload('/rankings/' + id_voluntario)
                
            } catch (error) {
                console.log('entro al error')
                //mensaje de error
                console.log('error', error)
                this.message = 'Ocurrió un error'
            }
        }
    },
    //Función que se ejecuta al cargar el componente
    created:function(){
        this.getData();
    }
}
</script>