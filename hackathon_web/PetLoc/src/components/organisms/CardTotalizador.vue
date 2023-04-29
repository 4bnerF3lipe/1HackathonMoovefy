<script>
import { defineComponent } from "vue";
import ComponenteTotalizador from "../molecules/ComponenteTotalizador.vue";
const name = 'CardTotalizador'

export default defineComponent({
  name,

  components: { ComponenteTotalizador }, 

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
        <div class="content">
            <div class="totalizadores">
                <ComponenteTotalizador :numero="1000" subtitulo="pets" />
                <ComponenteTotalizador/>
                <ComponenteTotalizador/>
            </div>
        </div>
    </div>
</template>


<style scoped>
.content{
    width: 100%;
    display:flex;
    justify-content: center;
    background-color: #E6E6E6;
}
.totalizadores{
    display: flex;
    justify-content: space-between;
    width:40% ;
}
</style>
