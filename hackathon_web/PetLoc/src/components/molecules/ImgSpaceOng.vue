<script>
import { defineComponent } from 'vue'
import CustomSubHeader from '../atoms/CustomSubHeader.vue'
import PImage from '../PImage.vue'
const name = 'ImgSpaceOng'

export default defineComponent({
  name,

  components: { CustomSubHeader, PImage },

  props: {
  imgs:{
    type:Array,
    default:() => []
  },
  primeiroTitulo:{
    type:String,
    default:'',
  },
  segundoTitulo:{
    type:String,
    default:'',
  }
  },

  mounted() {},

  updated() {},

  data() {
    return {
     
    }
  },

  methods: {},

  computed: {}
})
</script>

<template>
  <div class="content">
    <div class="subheader-container">
      <CustomSubHeader :title="primeiroTitulo" color="#5e454b"/>
      <CustomSubHeader :title="segundoTitulo" color="#5e454b" class="ver-mais" v-if="segundoTitulo"/>
    </div>
    <ul class="img-container">
        <img src="../../assets/imgs/ongs/a.png" class="image" />
        <img src="../../assets/imgs/ongs/Grupo 72.png" class="image" />
        <img src="../../assets/imgs/ongs/Grupo 73.png" class="image" />
        <img src="../../assets/imgs/ongs/Grupo 74.png" class="image" />
    </ul>
  </div>
</template>

<style scoped>
.img-container {
  width: 80%;
  display: flex;
  justify-content:space-between;
  align-items: center;
  

}

.img-container li {
  list-style: none;
}
.content{
  margin-top:28px;
  margin-bottom:28px;
}
.subheader-container{
  display: flex;
  width:90%;
  justify-content: space-between;
}
.ver-mais{
  cursor: pointer;
}
</style>
