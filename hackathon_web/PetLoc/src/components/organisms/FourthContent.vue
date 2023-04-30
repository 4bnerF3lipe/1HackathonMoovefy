<script>
import { defineComponent } from 'vue'
import CustomButton from '../atoms/CustomButton.vue'
import PopupPatrocinador from '../molecules/PopupPatrocinador.vue'
import PopupFormulario from '../molecules/PopupFormulario.vue'
const name = 'QuartaSessaoImgBotao'

export default defineComponent({
  name,

  components: { CustomButton, PopupPatrocinador, PopupFormulario },

  props: {},

  mounted() {},

  updated() {},

  data() {
    return {
      isVisible: false
    }
  },

  methods: {
    handlePopup() {
      this.isVisible = !this.isVisible
    }
  },

  computed: {}
})
</script>

<template>
  <div>
    <ul class="img-container">
      <img src="../../assets/imgs/Patrocinadores/Grupo 76.png" @click="handlePopup" />
      <img src="../../assets/imgs/Patrocinadores/Grupo 77.png" @click="handlePopup" />
      <img src="../../assets/imgs/Patrocinadores/Grupo 78.png" @click="handlePopup" />
      <img src="../../assets/imgs/Patrocinadores/Grupo 79.png" @click="handlePopup" />
      <img src="../../assets/imgs/Patrocinadores/Grupo 80.png" @click="handlePopup" />
    </ul>

    <div class="button-container">
      <CustomButton class="Button" texto="Torne-se um patrocinador" @click="handlePopup" />
    </div>

    <PopupPatrocinador :visible="isVisible" :click="handlePopup">
      <PopupFormulario />
    </PopupPatrocinador>
  </div>
</template>

<style scoped>
.content {
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.img-container {
  display: flex;
  list-style: none;
  width: 100%;
  gap: 3rem;
  justify-content: center;
}

.img-container img {
  width: 10rem;
  height: 10rem;
  border-radius: 18px;
  box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
}

.button-container {
  width: 100%;
  height: 32px;
  align-items: center;
  justify-content: center;
  display: flex;
  margin-top: 8rem;
  margin-bottom: 20px;
}
.Button {
  width: 20%;
  height: 48px;
  margin: 20px;
  background-color: #4f7575;
  color: #fff;
  border-radius: 32px;
  font-size: 1.1rem;
}
.Button:hover {
  cursor: pointer;
  border: 1px solid #4f7575;
  background-color: #fff;
  color: #4f7575;
}
.Button:active {
  cursor: pointer;
  width: 21%;
  height: 50px;
  margin: 24px;
  border: 1px solid #4f7575;
  background-color: #fff;
  color: #4f7575;
}

@media (max-width: 1024px) {
  .content {
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }

  .img-container {
    display: flex;
    flex-wrap: wrap;
    list-style: none;
    width: 100%;
    gap: 3rem;
    justify-content: space-around;
  }

  .img-container img {
    width: 10rem;
    height: 10rem;
    border-radius: 18px;
  }
}
</style>
