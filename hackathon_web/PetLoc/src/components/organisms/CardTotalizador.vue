<script>
import { defineComponent } from "vue";
import ComponenteTotalizador from "../molecules/ComponenteTotalizador.vue";
const name = 'CardTotalizador'

export default defineComponent({
  name,

  components: { ComponenteTotalizador }, 

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
    <div>
        <div class="content">
            <div class="totalizadores">
                <ComponenteTotalizador  cor-numero="#ffffff" corsubtitulo="#ffffff" :numero="1000" subtitulo="Pets disponíveis para adoção" />
                
                <ComponenteTotalizador cor-numero="#ffffff" corsubtitulo="#ffffff" :numero="2369" subtitulo="Pets resgatados" />
                
                <ComponenteTotalizador cor-numero="#ffffff" corsubtitulo="#ffffff" :numero="1009" subtitulo="Pets adotaods" />
            </div>
        </div>
    </div>
</template>


<style scoped>
.content{
    width: 100%;
    display:flex;
    justify-content: center;
    align-items: center;
    background-color: #4f7575;
    height: 250px;
}
.totalizadores{
    display: flex;
    justify-content: space-between;
    width:60% ;
}
.vertical-hr{
    border-left: 2px solid #ffffff;
  height: 80px;
}
</style>
