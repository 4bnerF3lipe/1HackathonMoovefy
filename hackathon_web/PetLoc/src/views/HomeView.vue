<script>
import { defineComponent } from 'vue'
import PrimeiraSessao from '../components/template/PrimeiraSessao.vue'
import SegundaSessao from '../components/template/SegundaSessao.vue'
import TerceiraSessao from '../components/organisms/TerceiraSessao.vue'
import Popup from '../components/molecules/Popup.vue'
import QuartaSessao from '../components/template/QuartaSessao.vue'

const name = 'HomeView'

export default defineComponent({
  name,

  components: { PrimeiraSessao, SegundaSessao, TerceiraSessao, Popup, QuartaSessao },

  props: {},

  mounted() {},

  updated() {},

  data() {
    return {
      isVisible: false
    }
  },

  methods: {
    handlePopup() {
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
    <QuartaSessao/>
    <Popup :visible="isVisible" :click="handlePopup" />
  </div>
</template>

<style scoped></style>
