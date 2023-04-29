<script>
import { defineComponent } from "vue";
const name = 'CustomSubHeader'

export default defineComponent({
  name,

  components: { }, 

  props: {
    title:{
      type:String,
      required:true
    },

    color:{
      type:String,
      default:'#707070',
    },

    customStyle:{
      type:Object,
      default:null
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
      <p :style="[customStyle, { color: `${color}` }]">{{ title }}</p>
</template>


<style scoped>
p{
  font-size: 2rem;
  
}

</style>
