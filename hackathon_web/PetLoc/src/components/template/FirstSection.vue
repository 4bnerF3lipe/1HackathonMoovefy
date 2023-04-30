<script>
import { defineComponent } from 'vue'
import HeaderBase from '../molecules/HeaderBase.vue'
import FirstContent from '../organisms/FirstContent.vue'
import TotalizerCard from '../organisms/TotalizerCard.vue'
const name = 'FirstSection'

export default defineComponent({
  name,

  components: { FirstContent, HeaderBase, TotalizerCard },

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
  <div class="content">
    <HeaderBase />
    <FirstContent />
    <TotalizerCard class="third" />
  </div>
</template>

<style scoped>
.third {
  margin-top: -7rem;
}
</style>
