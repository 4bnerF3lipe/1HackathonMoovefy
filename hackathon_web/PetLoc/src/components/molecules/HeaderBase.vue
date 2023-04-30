<script>
import { defineComponent } from "vue";
import HeaderLogo from "../atoms/HeaderLogo.vue";
const name = 'HeaderBase'

export default defineComponent({
  name,

  components: { HeaderLogo }, 

  props: {
    corFundo:{
      type:String,
      default:'#e6e6e6',
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
    <div class ="header">
      <div class="content">
        <HeaderLogo/>
      </div>
    </div>
</template>


<style scoped>
.header{
  background-color:v-bind('corFundo') ;
  width: 100%;
  height: 50px;
  display: flex;
  justify-content: center;
  align-items: flex-start;
  flex-direction: column;
  
}
.content{
  width: 80%;
}
</style>
