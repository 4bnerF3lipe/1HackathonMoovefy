<script>
import { defineComponent } from "vue";
import QuartaSessaoImgBotao from "../organisms/QuartaSessaoImgBotao.vue";
const name = 'QuartaSessao'

export default defineComponent({
  name,

  components: { QuartaSessaoImgBotao }, 

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
    <div>
        <QuartaSessaoImgBotao/>
    </div>
</template>


<style scoped>

</style>
