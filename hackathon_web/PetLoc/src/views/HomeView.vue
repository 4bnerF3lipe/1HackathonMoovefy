<script>
import { defineComponent } from "vue";
import PrimeiraSessao from "../components/template/PrimeiraSessao.vue";
import SegundaSessao from "../components/organisms/SegundaSessao.vue";

const name = 'HomeView'

export default defineComponent({
  name,

  components: { PrimeiraSessao, SegundaSessao }, 

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
      <PrimeiraSessao/>
      <SegundaSessao/>
    </div>
</template>


<style scoped>

</style>
