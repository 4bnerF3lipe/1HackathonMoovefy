<script>
import { defineComponent } from "vue";
const name = 'SubtituloPrimario'

export default defineComponent({
  name,

  components: { }, 

  props: {
    texto:{
        type:String,
        default:""
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
    <p class="texto">{{ texto }}</p>
</template>


<style scoped>
.texto{
    color:v-bind('corTexto');
    font-size: 1.3rem;
    word-break: break-word;
}
</style>
