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
        default:'400px',
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
    <!-- <img src="" alt=""> -->
    <div class="img"></div>
</template>


<style scoped>
img,.img{
    width: v-bind('width');
    height: v-bind('height');
    background-color :gray; 
}
</style>
