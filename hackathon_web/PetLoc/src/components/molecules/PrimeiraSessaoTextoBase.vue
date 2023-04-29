<script>
import { defineComponent } from "vue";
import SubtituloPrimario from "../atoms/SubtituloPrimario.vue";
import TituloPrimaio from "../atoms/TituloPrimaio.vue";
const name = 'PrimeiraSessaoTextoBase'

export default defineComponent({
  name,

  components: {TituloPrimaio, SubtituloPrimario }, 

  props: { 
    textoPrimario:{
        type:String,
        default:""
    },
    corTextoPrimario:{
        type:String,
        default:"#707070"
    },
    textoSecundario:{
        type:String,
        default:""
    },
    corTextoSecundario:{
        type:String,
        default:"#707070"
    },
    textoTerceiro:{
        type:String,
        default:""
    },
    corTextoTerceiro:{
        type:String,
        default:"#707070"
    }

  },

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
            <titulo-primaio :texto="textoPrimario" :cor-texto="corTextoPrimario"/>
            <subtitulo-primario :texto="textoSecundario" :cor-texto="corTextoSecundario"/>
        </div>
        <div class="conteudo-secundario">
            <titulo-primaio   :texto="textoTerceiro" :cor-texto="corTextoTerceiro" />
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
