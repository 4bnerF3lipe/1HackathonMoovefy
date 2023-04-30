<script>
import { defineComponent } from "vue";
import PrimeiraSessaoImagem from "../molecules/PrimeiraSessaoImagem.vue";
import PrimeiraSessaoTextoBase from "../molecules/PrimeiraSessaoTextoBase.vue";
const name = 'PrimeiraSessao'

export default defineComponent({
  name,

  components: {PrimeiraSessaoImagem, PrimeiraSessaoTextoBase }, 

  props: { },

  mounted () { },

  updated () { },

  data () {
    return { }
  },

  methods: { },

  computed: { }, 

});
</script>

<template>
    <div class="content">

      <div class="content-container">
        <primeira-sessao-texto-base
        texto-primario="Encontre seu futuro Pet!"
        cor-texto-primario="#5e454b"
        texto-secundario="A PetLoc é uma iniciativa dedicada a ajudar os pets abandonados a encontrar um lar amoroso.
        Somos um grupo de mediadores dedicados a conectar ongs que cuidam desses animais com pessoas que desejam 
        adotá-los. Além disso, buscamos promover a conscientização sobre a importância da adoção responsável de pets" 
        cor-texto-secundario="#707070"
        
        class="texto"
        />
        <primeira-sessao-imagem class ="img" height="60%" width="60%"/>
      </div>
    </div>
</template>


<style scoped>
.content-container{
    display: flex;
    width: 90%;
    height: 100%;
    margin-top: 28px;
    margin-top: 28px;
    background-color: #ffffff;
    gap: 10px;
}
.content{
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
}
.texto,.img{
  width: 50%;
}
</style>
