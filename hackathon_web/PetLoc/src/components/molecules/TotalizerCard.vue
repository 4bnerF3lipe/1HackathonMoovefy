<script>
import { defineComponent } from 'vue'
import TotalizerCardComponent from '../molecules/TotalizerCardComponent.vue'
const name = 'TotalizerCard'

export default defineComponent({
  name,

  components: { TotalizerCardComponent },

  props: {},

  mounted() {},

  updated() {},

  data() {
    return {}
  },

  methods: {},

  computed: {}
})
</script>

<template>
  <div>
    <div class="content">
      <div class="totalizadores">
        <TotalizerCardComponent
          cor-numero="#ffffff"
          corsubtitulo="#ffffff"
          :numero="1953"
          subtitulo="Pets disponíveis para adoção"
        />

        <TotalizerCardComponent
          cor-numero="#ffffff"
          corsubtitulo="#ffffff"
          :numero="4369"
          subtitulo="Pets resgatados"
        />

        <TotalizerCardComponent
          cor-numero="#ffffff"
          corsubtitulo="#ffffff"
          :numero="1309"
          subtitulo="Pets adotaods"
        />
      </div>
    </div>
  </div>
</template>

<style scoped>
.content {
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #4f7575;
  height: 250px;
}
.totalizadores {
  display: flex;
  align-items: baseline;
  justify-content: space-between;
  width: 80%;
}
.vertical-hr {
  border-left: 2px solid #ffffff;
  height: 80px;
}
</style>
