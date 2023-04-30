<script>
import { defineComponent } from 'vue'
import PSubTitle from '../atoms/PSubTitle.vue'
import Card from '../molecules/card.vue'
const name = 'Servicos'

export default defineComponent({
  name,

  components: { PSubTitle, Card },

  props: {},

  mounted() {},

  updated() {},

  data() {
    return {
      cards: [
        {
          img: {
            src: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLLiEwRvAp3HwMCV7F010h3lsOBQuOnrGLpA&usqp=CAU',
            alt: 'Descrição da imagem'
          },
          title: 'Title',
          subtitle: 'Subtitle'
        },
        {
          img: {
            src: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLLiEwRvAp3HwMCV7F010h3lsOBQuOnrGLpA&usqp=CAU',
            alt: 'Descrição da imagem'
          },
          title: 'Title',
          subtitle: 'Subtitle'
        },
        {
          img: {
            src: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLLiEwRvAp3HwMCV7F010h3lsOBQuOnrGLpA&usqp=CAU',
            alt: 'Descrição da imagem'
          },
          title: 'Title',
          subtitle: 'Subtitle'
        },
        {
          img: {
            src: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLLiEwRvAp3HwMCV7F010h3lsOBQuOnrGLpA&usqp=CAU',
            alt: 'Descrição da imagem'
          },
          title: 'Title',
          subtitle: 'Subtitle'
        }
      ]
    }
  },

  methods: {},

  computed: {}
})
</script>

<template>
  <div class="title">
    <PSubTitle title="Serviços" />
  </div>
  <div class="content">
    <ul class="service-container">
      <li v-for="(props, index) in cards" :key="index">
        <Card :img="props.img" :title="props.title" :subtitle="props.subtitle" class="card" />
      </li>
    </ul>
  </div>
</template>

<style scoped>
.content {
  /* background-color: #e6e6e6; */
  padding-top: 28px;
  padding-bottom: 28px;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}

.title {
  margin-top: 1rem;
  display: flex;
  width: 90%;
  justify-content: space-between;
}
.card {
  width: 100%;
}
.service-container {
  flex-wrap: wrap;
  display: flex;
  gap: 5rem;
  padding-top: 30px;
  width: 100%;
  justify-content: center;
  align-items: center;
}

.service-container li {
  list-style: none;
  width: 40%;
}
</style>
