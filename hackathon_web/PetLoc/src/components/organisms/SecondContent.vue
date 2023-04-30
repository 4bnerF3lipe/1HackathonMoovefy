<script>
import { defineComponent } from 'vue'

const name = 'SegundaSessao'

export default defineComponent({
  name,

  components: {},

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
    <ul class="img-container">
      <img src="../../assets/imgs/ongs/Grupo 71.png" @click="handlePopup" />
      <img src="../../assets/imgs/ongs/Grupo 72.png" @click="handlePopup" />
      <img src="../../assets/imgs/ongs/Grupo 73.png" @click="handlePopup" />
      <img src="../../assets/imgs/ongs/Grupo 74.png" @click="handlePopup" />
      <img src="../../assets/imgs/ongs/Grupo 75.png" @click="handlePopup" />
    </ul>
    <PopupONG :visible="isVisible" :click="handlePopup"> </PopupONG>
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
