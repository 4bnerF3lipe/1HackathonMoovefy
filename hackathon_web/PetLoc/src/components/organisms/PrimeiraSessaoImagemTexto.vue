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
        <primeira-sessao-texto-base
          texto-primario="Encontre seu futuro Pet!"
          texto-secundario="A PetLoc é uma iniciativa dedicada a ajudar os pets abandonados a encontrar um lar amoroso.
           Somos um grupo de mediadores dedicados a conectar ongs que cuidam desses animais com pessoas que desejam 
           adotá-los. Além disso, buscamos promover a conscientização sobre a importância da adoção responsável de pets" 
          texto-terceiro="bbbb"
          class="texto"
        />
        <primeira-sessao-imagem class ="img" height="400px" width="100px"/>
    </div>
</template>


<style scoped>
.content{
    display: flex;
    width: 100%;
    height: 100%;
    margin: 28px;
  
}
.texto,.img{
  width: 50%;
}
</style>
