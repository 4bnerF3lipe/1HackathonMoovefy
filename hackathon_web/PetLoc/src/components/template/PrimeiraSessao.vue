<script>
import { defineComponent } from "vue";
import HeaderBase from "../molecules/HeaderBase.vue";
import PrimeiraSessaoImagemTexto from "../organisms/PrimeiraSessaoImagemTexto.vue";
import CardTotalizador from "../organisms/CardTotalizador.vue"
const name = 'PrimeiraSessao'

export default defineComponent({
  name,

  components: { PrimeiraSessaoImagemTexto, HeaderBase ,CardTotalizador}, 

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
        <header-base/>
        <PrimeiraSessaoImagemTexto/>
        <CardTotalizador/>
    </div>
</template>


<style scoped>
.content{
    width:100% ;
    height: 100%;
}
</style>
