<script>
import { defineComponent } from 'vue'
import PrimeiraSessao from '../components/template/PrimeiraSessao.vue'
import SegundaSessao from '../components/template/SegundaSessao.vue'
import TerceiraSessao from '../components/organisms/TerceiraSessao.vue'

import QuartaSessao from '../components/template/QuartaSessao.vue'

const name = 'HomeView'

export default defineComponent({
  name,

  components: { PrimeiraSessao, SegundaSessao, TerceiraSessao,  QuartaSessao },

  props: {},

  mounted() {},

  updated() {},

  data() {
    return {
      
    }
  },

  methods: {
    
  },

  computed: {}
})
</script>

<template>
  <div>
    <PrimeiraSessao />
    <SegundaSessao />
    <TerceiraSessao />
    <QuartaSessao/>
    
  </div>
</template>

<style scoped></style>
