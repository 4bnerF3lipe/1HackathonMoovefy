<script>
import { defineComponent } from 'vue'
import PTitle from '../atoms/PTitle.vue'
import PSubTitle from '../atoms/PSubTitle.vue'
import CustomButton from '../atoms/CustomButton.vue'

const name = 'FirstContent'

export default defineComponent({
  name,

  components: { PTitle, PSubTitle, CustomButton },

  props: {},

  mounted() {},

  updated() {},

  data() {
    return {
      isVisible: false
    }
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

      <div class="button-container">
        <CustomButton class="Button" texto="Conheça nossos serviços" @click="handlePopup" />
      </div>
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
  width: 50%;
  flex-direction: column;
  margin-top: 5rem;
}
.title {
  text-align: start;
  font-size: 2.5rem;
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
  width: 40rem;
  height: 40rem;
}

.button-container {
  margin-top: 2rem;
  width: 60%;
  height: 20px;
  display: flex;
  justify-content: start;
  align-items: center;
}
.Button {
  width: 100%;
  height: 5px;
  background-color: #4f7575;
  color: #fff;
  border-radius: 32px;
  font-size: 1.1rem;
  padding-top: 20px;
  padding-bottom: 40px;
}

.Button:hover {
  cursor: pointer;
  border: 1px solid #4f7575;
  background-color: #fff;
  color: #4f7575;
}
.Button:active {
  cursor: pointer;
  width: 100%;
  padding-top: 22px;
  border: 1px solid #4f7575;
  background-color: #fff;
  color: #4f7575;
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
