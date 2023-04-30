<script>
import { defineComponent } from 'vue'
const name = 'PImage'

export default defineComponent({
  name,

  components: {},

  props: {
    src: {
      type: String,
      required: true
    },
    alt: {
      type: String,
      required: true
    },
    customStyle: {
      type: Object,
      default: null
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
  <img :src="src" :alt="alt" :style="customStyle" class="image" />
</template>

<style scoped>
.image {
  width: 15rem;
  margin: 0;
  padding: 0;
}
</style>
