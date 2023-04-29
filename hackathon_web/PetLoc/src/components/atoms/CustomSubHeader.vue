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
      <h2 :style="[customStyle, { color: `${color}` }]">{{ title }}</h2>
</template>


<style scoped>
</style>
