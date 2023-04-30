<script>
import { defineComponent } from 'vue'
import PSubTitle from '../atoms/PSubTitle.vue'
const name = 'ImgSpace'

export default defineComponent({
  name,

  components: { PSubTitle },

  props: {
    imgs: {
      type: Array,
      default: () => []
    },
    primeiroTitulo: {
      type: String,
      default: ''
    },
    segundoTitulo: {
      type: String,
      default: ''
    }
  },

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
    <div class="subheader-container">
      <PSubTitle :text="primeiroTitulo" textColor="#5e454b" />
      <PSubTitle :text="segundoTitulo" textColor="#5e454b" />
    </div>
    <!-- <ul class="img-container">
      <div class="card">
    <div class="box-imag">
       <img src="../../assets/imgs/Patrocinadores/Grupo 76.png"/>
    </div>
  </div>
  <div class="card">
    <div class="box-imag">
       <img src="../../assets/imgs/Patrocinadores/Grupo 77.png"/>
    </div>
  </div>
  <div class="card">
    <div class="box-imag">
       <img  src="../../assets/imgs/Patrocinadores/Grupo 78.png"/>
    </div>
  </div>
  <div class="card">
    <div class="box-imag">
       <img  src="../../assets/imgs/Patrocinadores/Grupo 79.png"/>
    </div>
  </div>
  <div class="card">
    <div class="box-imag">
       <img  src="../../assets/imgs/Patrocinadores/Grupo 80.png"/>
    </div>
  </div>
    </ul> -->
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
.content {
  margin-top: 28px;
  margin-bottom: 28px;
}
.subheader-container {
  display: flex;
  width: 90%;
  justify-content: space-between;
}
.ver-mais {
  cursor: pointer;
}
</style>
