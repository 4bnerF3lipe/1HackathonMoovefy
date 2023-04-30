<script>
import { defineComponent } from "vue";
import ImgSpaceOng from "../molecules/ImgSpaceOng.vue";

const name = 'SegundaSessao'

export default defineComponent({
  name,

  components: { ImgSpaceOng }, 

  props: { },

  mounted () { },

  updated () { },

  data () { 
    return { 
      
    }
  },

  methods: { },

  computed: { }, 

});
</script>

<template>
    <div class = "content">
        <ImgSpaceOng :imgs="imgs" primeiro-titulo="CONHEÇA NOSSAS ONGS"  segundo-titulo="Ver Mais"/>
        <hr>
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
hr{
    width: 30%;
    height: 1px ;
    background-color:#707070 ;
}
</style>
