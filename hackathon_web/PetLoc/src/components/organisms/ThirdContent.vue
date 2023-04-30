<script>
import { defineComponent } from 'vue'
import PSubTitle from '../atoms/PSubTitle.vue'
const name = 'ThirdContent'

export default defineComponent({
  name,

  components: { PSubTitle },

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
  <div class="title">
    <PSubTitle title="Serviços" />
  </div>
  <div class="content">
    <div class="service-container">
      <div class="card">
        <div class="box-imag">
          <img src="../../assets/imgs/servicos/pet.png" />
        </div>
        <div class="box-text">
          <h2>Adote</h2>
          <h4>Adote um animalzinho</h4>
        </div>
      </div>
      <div class="card">
        <div class="box-imag">
          <img src="../../assets/imgs/servicos/heart-tick.png" />
        </div>
        <div class="box-text">
          <h2>Apadrinhe um pet</h2>
          <h4>Cuide de um pet</h4>
        </div>
      </div>
    </div>
    <div class="service-container">
      <div class="card">
        <div class="box-imag">
          <img src="../../assets/imgs/servicos/location-add.png" />
        </div>
        <div class="box-text">
          <h2>Relate</h2>
          <h4>Relate animais abandonados</h4>
        </div>
      </div>
      <div class="card">
        <div class="box-imag">
          <img src="../../assets/imgs/servicos/shop.png" />
        </div>
        <div class="box-text">
          <h2>Conheça ONG's</h2>
          <h4>Conheça as ONG's perto de você</h4>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.content {
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}

.title {
  display: flex;
  width: 100%;
  justify-content: space-between;
}
.service-container {
  width: 100%;
  display: flex;
  justify-content: space-around;
  align-items: center;
  flex-wrap: wrap;
  padding-top: 3rem;
}
.card {
  display: flex;
  gap: 0.5rem;
  width: 40%;
  border-radius: 18px;
  padding: 20px;
  background-color: #eeeeee;
  box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
}

.card img {
  width: 50px;
}

.box-text {
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin-left: 1rem;
  align-items: start;
}
</style>
