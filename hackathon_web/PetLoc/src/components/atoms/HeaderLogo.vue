<script>
import { defineComponent } from "vue";
const name = 'HeaderLogo'

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
    <div class="logo">
        <img src="../../assets/imgs/LOGO.svg"/>
    </div>
</template>


<style scoped>
.logo{
    width:fit-content;
    height: 80%;
    display: flex;
    align-items: center;
    justify-content: center;
}
</style>
