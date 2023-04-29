<script>
import { defineComponent } from 'vue'
import CustomSubHeader from '../atoms/CustomSubHeader.vue'
import PImage from '../PImage.vue'
const name = 'OngsSpace'

export default defineComponent({
  name,

  components: { CustomSubHeader, PImage },

  props: {},

  mounted() {},

  updated() {},

  data() {
    return {
      imgs: [
        {
          src: 'https://static3.tcdn.com.br/img/img_prod/460977/teste_100485_1_cbc226c7d23a19c784fb4752ffe61337.png',
          alt: 'Descrição da imagem'
        },
        {
          src: 'https://static3.tcdn.com.br/img/img_prod/460977/teste_100485_1_cbc226c7d23a19c784fb4752ffe61337.png',
          alt: 'Descrição da imagem'
        },
        {
          src: 'https://static3.tcdn.com.br/img/img_prod/460977/teste_100485_1_cbc226c7d23a19c784fb4752ffe61337.png',
          alt: 'Descrição da imagem'
        },
        {
          src: 'https://static3.tcdn.com.br/img/img_prod/460977/teste_100485_1_cbc226c7d23a19c784fb4752ffe61337.png',
          alt: 'Descrição da imagem'
        }
      ]
    }
  },

  methods: {},

  computed: {}
})
</script>

<template>
  <div>
    <CustomSubHeader title="CONHEÇA NOSSAS ONGs" />
    <ul class="img-container">
      <li v-for="(props, index) in imgs" :key="index">
        <PImage :src="props.src" :alt="props.alt" :customStyle="{ margin: '2rem' }" />
      </li>
    </ul>
  </div>
</template>

<style scoped>
.img-container {
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.img-container li {
  list-style: none;
}
</style>
