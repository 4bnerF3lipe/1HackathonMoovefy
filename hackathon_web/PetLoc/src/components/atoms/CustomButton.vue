<script>
import { defineComponent } from 'vue'
const name = 'CustomButton'

export default defineComponent({
  name,

  components: {},

  props: {
    corPrimaria: {
      type: String,
      default: '#707070'
    },
    corSecundaria: {
      type: String,
      default: '#D8D8D8'
    },
    texto: {
      type: String,
      default: ''
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
  <div class="content">
    <p>{{ texto }}</p>
  </div>
</template>

<style scoped>
.content {
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: v-bind('corSecundaria');
  color: v-bind('corPrimaria');
}
</style>
