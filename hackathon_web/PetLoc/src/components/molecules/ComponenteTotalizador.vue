<script>
import { defineComponent } from "vue";
import NumerosContagem from "../atoms/NumerosContagem.vue";
import SubTituloNumerosContagem from "../atoms/SubTituloNumerosContagem.vue";
const name = 'ComponenteTotalizador'

export default defineComponent({
  name,

  components: { NumerosContagem, SubTituloNumerosContagem }, 

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
    <div>
    <NumerosContagem numero="123125"/>
    <SubTituloNumerosContagem subtitulo="pets"/>
    </div>
</template>


<style scoped>

</style>
