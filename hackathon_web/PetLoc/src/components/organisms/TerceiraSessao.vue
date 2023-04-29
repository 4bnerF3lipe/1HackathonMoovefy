<script>
import { defineComponent } from 'vue'
import Servicos from '../molecules/Servicos.vue'
const name = 'TerceiraSessao'

export default defineComponent({
  name,

  components: { Servicos },

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
    <Servicos />
    <hr />
  </div>
</template>

<style scoped>
.content {
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
hr {
  width: 30%;
  height: 1px;
  background-color: #707070;
}
</style>
