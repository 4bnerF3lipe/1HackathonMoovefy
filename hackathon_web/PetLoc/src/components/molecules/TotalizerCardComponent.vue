<script>
import { defineComponent } from 'vue'
import PSubTitle from '../atoms/PSubTitle.vue'
import Vue3autocounter from 'vue3-autocounter'
const name = 'TotalizerCardComponent'

export default defineComponent({
  name,

  components: { PSubTitle, Vue3autocounter },

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
    <Vue3autocounter
      ref="counter"
      :startAmount="0"
      :endAmount="numero"
      :duration="20"
      separator="."
      :autoinit="true"
      class="text-count"
    />
    <PSubTitle :text="subtitulo" :textColor="corsubtitulo" class="text-description" />
  </div>
</template>

<style scoped>
.box-totalizer {
  width: 20rem;
}
.text-count {
  font-size: 2rem;
  color: v-bind('corNumero');
}
.text-description {
  font-size: 1.3rem;
}
</style>
