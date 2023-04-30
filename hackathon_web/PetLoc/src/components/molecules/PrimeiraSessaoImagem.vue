<script>
import { defineComponent } from "vue";
const name = ''

export default defineComponent({
  name,

  components: { }, 

  props: {
    width:{
        type:String,
        default:'400px',
    },
    height:{
        type:String,
        default:'100px',
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
    <img src="../../assets/imgs/Imagem.svg" alt="">
    <!-- <div class="img"></div> -->
</template>


<style scoped>
img,.img{
    width: v-bind('width');
    height: v-bind('height');
    
}
</style>
