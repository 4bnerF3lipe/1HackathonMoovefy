<script>
import { defineComponent } from 'vue'
const name = 'Popup'

export default defineComponent({
  name,

  components: {},

  props: {
    visible: {
      type: Boolean,
      default: false
    },
    click: {
      type: Function,
      default: null
    },
    title: {
      type: String,
      default: ''
    }
  },

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
  <div v-if="visible" class="modal">
    <div class="modal-content">
      <span class="close" @click="click">&times;</span>
      <b class="titulo">Um pouco sobre nós: ONG {{ title }}</b>
      <p class="sobre">Em Prol da Causa Animal em Bauru desde 2013</p>
      <div class="infos">
        Trabalhamos com diversos projetos regionais. Nossas ações incluem o resgate e castração de
        bichinhos em situação de rua juntamente ao levantamento de campanhas voltadas para a
        vacinação e suporte enquanto não encontram um novo lar.
      </div>
      <p class="sobre">Para mais informações:</p>
      <div class="imagem">
        <img src="../../assets/imgs/redesocial.png" />
      </div>
    </div>
  </div>
</template>

<style scoped>
.modal {
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.4);
  display: flex;
  justify-content: center;
  align-items: center;
}

.modal-content {
  background-color: white;
  padding: 20px;
  border-radius: 15px;
  width: 80%;
  max-width: 500px;
  position: relative;
}

.close {
  position: absolute;
  top: 10px;
  right: 10px;
  font-size: 28px;
  font-weight: bold;
  cursor: pointer;
}

.titulo {
  margin-bottom: 30px;
  color: #707082;
}

.infos {
  margin-top: 6%;
  margin-bottom: 6%;
  text-align: left;
}

.sobre {
  text-align: left;
  margin-top: 20px;
  margin-bottom: 20px;
}

img {
  height: 50px;
}
</style>
