<script>
import { defineComponent } from "vue";
const name = 'CustomHeader'

export default defineComponent({
  name,

  components: { }, 

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
    <div class ="header">

    </div>
</template>


<style scoped>
.header{
  background-color:tomato ;
  width: 100%;
  height: 50px;
}
</style>
