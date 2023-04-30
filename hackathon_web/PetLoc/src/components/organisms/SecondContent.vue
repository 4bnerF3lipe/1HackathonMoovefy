<script>
import { defineComponent } from 'vue'
import PopupONG from '../molecules/PopupONG.vue'

const name = 'SegundaSessao'

export default defineComponent({
  name,

  components: { PopupONG },

  props: {},

  mounted() {},

  updated() {},

  data() {
    return {
      isVisible: false,
      OngName: ''
    }
  },

  methods: {
    handlePopup(props) {
      this.OngName = props
      this.isVisible = !this.isVisible
    }
  },

  computed: {}
})
</script>

<template>
  <div class="content">
    <ul class="img-container">
      <img src="../../assets/imgs/ongs/Grupo 71.png" @click="() => handlePopup('Arca da Fé')" />
      <img src="../../assets/imgs/ongs/Grupo 72.png" @click="() => handlePopup('Arca Brasil')" />
      <img
        src="../../assets/imgs/ongs/Grupo 73.png"
        @click="() => handlePopup('Amigos São Francisco')"
      />
      <img
        src="../../assets/imgs/ongs/Grupo 74.png"
        @click="() => handlePopup('Projeto Acolher')"
      />
      <img
        src="../../assets/imgs/ongs/Grupo 75.png"
        @click="() => handlePopup('Focinhos Carentes')"
      />
    </ul>
    <PopupONG :visible="isVisible" :click="handlePopup" :title="OngName"> </PopupONG>
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
  cursor: pointer;
  border-radius: 18px;
  box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
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
