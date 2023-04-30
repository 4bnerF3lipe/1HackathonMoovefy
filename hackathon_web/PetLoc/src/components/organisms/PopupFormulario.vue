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
         <TextosPadroesPopups class="titulo" :inputText="inputText" :corInputText="corInputText"/>
         <div class="formulario">
            <ComponenteFormulario :inputText="inputText" :corInputText="corInputText"/>
            <ComponenteFormulario :inputText="inputText" :corInputText="corInputText"/>
            <ComponenteFormulario :inputText="inputText" :corInputText="corInputText"/>
            <ComponenteFormulario :inputText="inputText" :corInputText="corInputText"/>
        </div>
     </div>
 </template>
 
 
 <style scoped>
 .titulo{
    display: flex;
    justify-content: center;
 }

 .formulario{
    display:flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
 }
 </style>
 