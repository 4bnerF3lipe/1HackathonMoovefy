<script>
import { defineComponent } from 'vue'
import PImage from '../PImage.vue'
const name = 'Card'

export default defineComponent({
  name,

  components: { PImage },

  props: {
    img: {
      type: Object,
      required: true
    },
    title: {
      type: String,
      required: true
    },
    subtitle: {
      type: String,
      required: true
    }
  },

  mounted() {},

  updated() {},

  data() {
    return {
      imgs: {
        src: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLLiEwRvAp3HwMCV7F010h3lsOBQuOnrGLpA&usqp=CAU',
        alt: 'Descrição da imagem'
      }
    }
  },

  methods: {},

  computed: {}
})
</script>

<template>
  <div class="card">
    <div class="box-imag">
      <PImage :src="img.src" :alt="img.alt" />
    </div>
    <div class="box-text">
      <h1>{{ title }}</h1>
      <h3>{{ subtitle }}</h3>
    </div>
  </div>
</template>

<style scoped>
.card {
  display: flex;
  gap: 1rem;
  width: 100%;
  border-radius: 18px;
  padding: 20px;
  border: 4px solid #bdbdbd;
}

.card img {
  width: 80px;
}

.box-text {
  display: flex;
  flex-direction: column;
  justify-content: center;
}
</style>
