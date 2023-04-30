<script>
import { defineComponent } from "vue";
const name = 'TextosPadroesPopups'

export default defineComponent({
  name,

  components: { }, 

  props: {
    textoPagina:{
        type: String,
        default: "Lorem Ipsun",
    },
    corTextoPagina:{
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
    <div class="texto"> {{textoPagina}}</div>
</template>


<style scoped>
.texto{
    margin-top: 8px;
    margin-bottom: 8px;
    color: v-bind('corTextoPagina');
    text-align: left;
}
</style>
