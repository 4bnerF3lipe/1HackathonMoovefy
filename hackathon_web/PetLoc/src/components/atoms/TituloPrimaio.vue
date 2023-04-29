<script>
import { defineComponent } from "vue";
const name = 'TituloPrimaio'

export default defineComponent({
  name,

  components: { }, 

  props: { 
    texto:{
        type:String,
        default:"TITULO"
    },
    corTexto:{
        type:String,
        default:"#707070"
    }
    
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
    <p class = "texto">{{ texto }}</p>
</template>


<style scoped>
.texto{
    color:v-bind('corTexto');
    font-size: 3rem;
}
</style>
