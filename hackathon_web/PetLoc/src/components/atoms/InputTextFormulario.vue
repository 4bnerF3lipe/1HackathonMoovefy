<script>
import { defineComponent } from "vue";
const name = 'InputTextFormulario'

export default defineComponent({
  name,

  components: { }, 

  props: {
    corInputText:{
        type: String,
        default: "#707070",
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
    <input type="input" name="label">
</template>


<style scoped>
input{
    border-radius: 4px;
    border: 1px solid #707070;
    width: 100%;
    height: 30px;
}

</style>
