 <script>
 import { defineComponent } from "vue";
 import TextosPadroesPopups from "../atoms/TextosPadroesPopups.vue";
 import ComponenteFormulario from "../molecules/ComponenteFormulario.vue";
 const name = 'PopupFormulario'
 
 export default defineComponent({
   name,
 
   components: { ComponenteFormulario, TextosPadroesPopups }, 
 
   props: { },
 
   mounted () { },
 
   updated () { },
 
   data () {
     return { }
   },
 
   methods: { },
 
   computed: { }, 
 
 });
 </script>
 
 <template>
     <div class="card-Formulario">
     
         <div class="formulario">
            <ComponenteFormulario textoPagina="aaaaa" />
            <ComponenteFormulario textoPagina="aaaaa"/>
            <ComponenteFormulario textoPagina="aaaaa"/>
            <ComponenteFormulario textoPagina="aaaaa"/>
        </div>
     </div>
 </template>
 
 
 <style scoped>
 .titulo{
    display: flex;
    justify-content: center;
 }

 .formulario{
   width: 100%;
   height: 30px; 
   display:flex;
   flex-direction: column;
   align-items: center;
   justify-content: center;
 }
 </style>
 