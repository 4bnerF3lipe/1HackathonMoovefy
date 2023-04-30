<script>
import { defineComponent } from 'vue'
import FirstSection from '../components/template/FirstSection.vue'
import SecondSection from '../components/template/SecondSection.vue'
import ThirdSection from '../components/template/ThirdSection.vue'
import FourthSection from '../components/template/FourthSection.vue'

const name = 'HomeView'

export default defineComponent({
  name,

  components: { FirstSection, SecondSection, ThirdSection, FourthSection },

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
    <ThirdSection />
    <FourthSection />
  </div>
</template>

<style scoped></style>
