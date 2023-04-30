<script>
import { defineComponent } from 'vue'
import FirstSection from '../components/template/FirstSection.vue'
import SecondSection from '../components/template/SecondSection.vue'

import TerceiraSessao from '../components/organisms/TerceiraSessao.vue'
import QuartaSessao from '../components/template/QuartaSessao.vue'

const name = 'HomeView'

export default defineComponent({
  name,

  components: { FirstSection, SecondSection, TerceiraSessao, QuartaSessao },

  props: {},

  mounted() {},

  updated() {},

  data() {
    return {}
  },

  methods: {},

  computed: {}
})
</script>

<template>
  <div>
    <FirstSection />
    <SecondSection />
    <TerceiraSessao />
    <QuartaSessao />
  </div>
</template>

<style scoped></style>
