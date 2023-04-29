<script>
import { defineComponent } from "vue";
import SubtituloPrimario from "../atoms/SubtituloPrimario.vue";
import TituloPrimaio from "../atoms/TituloPrimaio.vue";
const name = 'PrimeiraSessaoTextoBase'

export default defineComponent({
  name,

  components: {TituloPrimaio, SubtituloPrimario }, 

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
    <div class = "content">
        <div class="conteudo-primario">
            <titulo-primaio/>
            <subtitulo-primario/>
        </div>
        <div class="conteudo-secundario">
            <titulo-primaio />
        </div>
    </div>
</template>


<style scoped>

.content,.conteudo-primario{
    width:100%;
    height: 100%;
    display: flex;
    align-items: flex-start;
    flex-direction: column;
}
.content{
    gap:10px;
}
.conteudo-primario{
    margin-top: 10px;;
}
</style>
