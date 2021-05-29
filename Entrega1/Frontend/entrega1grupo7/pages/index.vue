<template>
    <div class="container">
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
        <button type="button" @click="send" class="main">Aceptar</button>
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
        getData: async function(){
            try {
                let response = await this.$axios.get('/tareas/824');
                this.items  = response.data;
                console.log(response)
            } catch (error) {
                console.log('error', error);
            }
        },
        send: async function(){
            this.message = '';
            //envío de datos del formulario
            console.log('Entre funcion boton')
            try {
                console.log('Entra al try')
                var result = await this.$axios.put('/rankings/824/48/2');
                console.log('Pasa var result')
                let ranking = result.data;
                //mensaje de exito 
                this.message = `Se actualizó el ranking con flg_participa: ${ranking.flg_participa}`;
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