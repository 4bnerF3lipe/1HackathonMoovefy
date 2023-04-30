<script>
import { defineComponent } from 'vue'
import PSubTitle from '../atoms/PSubTitle.vue'
import PTitle from '../atoms/PTitle.vue'
const name = 'TotalizerCardComponent'

export default defineComponent({
  name,

  components: { PSubTitle, PTitle },

  props: {
    numero: {
      type: Number,
      default: 0
    },
    corNumero: {
      type: String,
      default: '#707070'
    },
    subtitulo: {
      type: String,
      default: 'N/A'
    },
    corsubtitulo: {
      type: String,
      default: '#707070'
    }
  },

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
  <div class="box-totalizer">
    <PTitle :text="numero" :textColor="corNumero" class="text-count" />
    <PSubTitle :text="subtitulo" :textColor="corsubtitulo" class="text-description" />
  </div>
</template>

<style scoped>
.box-totalizer {
  width: 20rem;
}
.text-count {
  font-size: 2rem;
}
.text-description {
  font-size: 1.3rem;
}
</style>
