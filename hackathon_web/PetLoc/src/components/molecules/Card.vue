<script>
import { defineComponent } from 'vue'
import PImage from '../PImage.vue'
const name = 'Card'

export default defineComponent({
  name,

  components: { PImage },

  props: {},

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
      <PImage :src="imgs.src" :alt="imgs.alt" />
    </div>
    <div class="box-text">
      <h1>Serviços 03</h1>
      <h3>Serviços 01</h3>
    </div>
  </div>
</template>

<style scoped>
.card {
  display: flex;
  gap: 1rem;
  width: 40%;
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
