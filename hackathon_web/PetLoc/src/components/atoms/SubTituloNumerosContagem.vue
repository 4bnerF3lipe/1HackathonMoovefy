<script>
import { defineComponent } from "vue";
const name = 'SubTituloNumerosContagem'

export default defineComponent({
  name,

  components: { }, 

  props: {
    subtitulo:{
        type: String,
        default: "N/A",
    },
    corsubtitulo:{
        type: String,
        default: "#707070",
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
    <div class="subtitulo"> {{subtitulo}}</div>
</template>


<style scoped>
.subtitulo{
    text-align: center;
    color: v-bind('corsubtitulo');
}
</style>
