<script>
import { defineComponent } from 'vue'
import PTitle from '../atoms/PTitle.vue'
import PSubTitle from '../atoms/PSubTitle.vue'
const name = 'FirstContent'

export default defineComponent({
  name,

  components: { PTitle, PSubTitle },

  props: {},

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
    <div class="box-text">
      <PTitle text="Encontre seu futuro Pet!" textColor="#5e454b" class="title" />
      <PSubTitle
        text="A PetLoc é uma iniciativa dedicada a ajudar os pets abandonados a encontrar um lar amoroso.
        Somos um grupo de mediadores dedicados a conectar ONGs que cuidam desses animais com pessoas que desejam 
        adotá-los. Além disso, buscamos promover a conscientização sobre a importância da adoção responsável de pets"
        textColor="#707070"
        class="subtitle"
      />
    </div>
    <div class="box-image">
      <img src="../../assets/imgs/Imagem.svg" />
    </div>
  </div>
</template>

<style scoped>
.content {
  display: flex;
  flex-direction: row;
  align-items: start;
  justify-content: center;
  width: 100%;
  box-sizing: border-box;
  padding: 3rem;
  gap: 3rem;
}
.box-text {
  display: flex;
  flex-direction: column;
  margin-top: 3rem;
}
.title {
  text-align: center;
  font-size: 2rem;
  font-weight: 900;
}

.subtitle {
  margin-top: 1rem;
  margin-bottom: 3rem;
  text-align: justify;
  font-size: 1.3rem;
  font-weight: 400;
}

.box-image {
  display: flex;
  justify-content: center;
}

.box-image img {
  width: 35rem;
  height: 35rem;
}

@media (max-width: 1024px) {
  .content {
    display: flex;
    flex-direction: column;
    width: 100%;
    box-sizing: border-box;
    padding: 3rem;
    text-align: justify;
  }

  .box-text {
    min-height: 40rem;
  }

  .title {
    text-align: center;
    font-size: 2rem;
    font-weight: 900;
  }

  .subtitle {
    margin-top: 1rem;
    margin-bottom: 3rem;
    text-align: justify;
    font-size: 1.3rem;
    font-weight: 400;
  }

  .box-image {
    display: flex;
    justify-content: center;
  }

  .box-image img {
    position: absolute;
    top: 20rem;
    width: 65%;
    height: 65%;
  }
}
</style>
