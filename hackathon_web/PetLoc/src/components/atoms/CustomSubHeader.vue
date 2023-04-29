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
      required:true
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
    <div>
      <h3 :style="[customStyle, { color: `${color}` }]">{{ title }}</h3>
    </div>
</template>


<style scoped>
</style>
