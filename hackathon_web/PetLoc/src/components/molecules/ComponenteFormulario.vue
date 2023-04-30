<script>
import { defineComponent } from "vue";
import TextosPadroesPopups from "../atoms/TextosPadroesPopups.vue";
import InputTextFormulario from "../atoms/InputTextFormulario.vue";
const name = 'ComponenteTotalizador'

export default defineComponent({
  name,

  components: { TextosPadroesPopups, InputTextFormulario  }, 

  props: { 
    textoPagina:{
        type: String,
        default: "Lorem Ipsun",
    },
    corTextoPagina:{
        type: String,
        default: "#00000",
    },
    inputText:{
        type: String,
        default: "Lorem Ipsun",
    },
    corInputText:{
        type: String,
        default: "#00000",
    },
  },

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
    <div>
    <TextosPadroesPopups :texto-pagina="inputText" :corInputText="corInputText"/>
    <InputTextFormulario :textoPagina="textoPagina" :corTextoPagina="corTextoPagina"/>
    </div>
</template>


<style scoped>

</style>
