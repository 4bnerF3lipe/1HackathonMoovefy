<script>
import { defineComponent } from "vue";
const name = 'NumerosContagem'

export default defineComponent({
  name,

  components: { }, 

  props: {
    numero:{
        type: Number,
        default: 0,
    },
    corNumero:{
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
    <div class="numeros"> {{ numero }}</div>
</template>


<style scoped>
.numeros{
    text-align: center;
    font-size: 2rem;
    color: v-bind('corNumero');
}


</style>
