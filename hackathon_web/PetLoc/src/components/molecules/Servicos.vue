<script>
import { defineComponent } from 'vue'
import CustomSubHeader from '../atoms/CustomSubHeader.vue'
import PImage from '../PImage.vue'
const name = 'Servicos'

export default defineComponent({
  name,

  components: { CustomSubHeader, PImage },

  props: {},

  mounted() {},

  updated() {},

  data() {
    return {
      imgs: {
        src: 'https://static3.tcdn.com.br/img/img_prod/460977/teste_100485_1_cbc226c7d23a19c784fb4752ffe61337.png',
        alt: 'Descrição da imagem'
      }
    }
  },

  methods: {},

  computed: {}
})
</script>

<template>
  <div>
    <CustomSubHeader title="Serviços" />
    <div class="service-container">
      <PImage :src="imgs.src" :alt="imgs.alt" :customStyle="{ with: '10rem', height: '10rem' }" />
      <div>
        <p>Serviços 03</p>
        <p>Serviços 01</p>
      </div>
    </div>
  </div>
</template>

<style scoped>
.service-container {
  width: 40%;
  height: 10rem;
  background-color: tomato;
  display: flex;
}
</style>
