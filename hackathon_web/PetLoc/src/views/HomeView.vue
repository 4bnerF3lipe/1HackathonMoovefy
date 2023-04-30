<script>
import { defineComponent } from 'vue'
import PrimeiraSessao from '../components/template/PrimeiraSessao.vue'
import SegundaSessao from '../components/organisms/SegundaSessao.vue'
import TerceiraSessao from '../components/organisms/TerceiraSessao.vue'
import Popup from '../components/molecules/Popup.vue'

const name = 'HomeView'

export default defineComponent({
  name,

  components: { PrimeiraSessao, SegundaSessao, TerceiraSessao, Popup },

  props: {},

  mounted() {},

  updated() {},

  data() {
    return {
      isVisible: true
    }
  },

  methods: {
    handlePopup() {
      console.log('Nhapo')
      this.isVisible = !this.isVisible
    }
  },

  computed: {}
})
</script>

<template>
  <div>
    <PrimeiraSessao />
    <SegundaSessao />
    <TerceiraSessao />

    <Popup :visible="isVisible" :click="handlePopup" />
  </div>
</template>

<style scoped></style>
