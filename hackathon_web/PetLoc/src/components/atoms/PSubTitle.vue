<script>
import { defineComponent } from 'vue'
const name = 'PSubTitle'

export default defineComponent({
  name,

  components: {},

  props: {
    text: {
      type: String,
      required: true
    },
    textColor: {
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
  <p class="title">{{ text }}</p>
</template>

<style scoped>
.title {
  font-size: 2rem;
  color: v-bind('textColor');
}
</style>
