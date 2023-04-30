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
    <div class="content">
        <QuartaSessaoImgBotao/>
        <div class="footer"></div>
    </div>
</template>


<style scoped>
.footer{
  width: 28px;
  height: 100%;
  background-color: tomato;
}
.content{

}
</style>
