<script>
import { defineComponent } from "vue";
import NumerosContagem from "../atoms/NumerosContagem.vue";
import SubTituloNumerosContagem from "../atoms/SubTituloNumerosContagem.vue";
const name = 'ComponenteTotalizador'

export default defineComponent({
  name,

  components: { NumerosContagem, SubTituloNumerosContagem }, 

  props: { 
    numero:{
        type: Number,
        default: 0,
    },
    corNumero:{
        type: String,
        default: "#707070",
    },
    subtitulo:{
        type: String,
        default: "N/A",
    },
    corsubtitulo:{
        type: String,
        default: "#707070",
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
    <NumerosContagem :numero="numero" :cor-numero="corNumero"/>
    <SubTituloNumerosContagem :subtitulo="subtitulo" :corsubtitulo="corsubtitulo"/>
    </div>
</template>


<style scoped>

</style>
