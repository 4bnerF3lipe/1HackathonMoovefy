<script>
import { defineComponent } from "vue";
import ImgSpace from "../molecules/ImgSpace.vue";
import CustomButton from "../atoms/CustomButton.vue";
const name = 'QuartaSessaoImgBotao'

export default defineComponent({
  name,

  components: { ImgSpace, CustomButton }, 

  props: { },

  mounted () { },

  updated () { },

  data () {
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

  methods: { },

  computed: { }, 

});
</script>

<template>
    <div>
        <ImgSpace  class = "content" :imgs="imgs" primeiro-titulo="Patrocinadores" />
        <div class="button-container">
          <CustomButton class ="Button" texto="Torne-se um patrocinador"/>
        </div>

    </div>
</template>


<style scoped>
.content{
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
.button-container{
  width: 100%;
  height: 32px;
  align-items: center;
  justify-content: center;
  display: flex;
}
.Button{
  width: 20%;
  height: 32px;
  margin:20px;
}
</style>
