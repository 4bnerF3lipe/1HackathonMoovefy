<script>
import { defineComponent } from 'vue'
import ComponenteFormulario from "../molecules/ComponenteFormulario.vue";
import CustomButton from '../atoms/CustomButton.vue';
const name = 'Popup'

export default defineComponent({
  name,

  components: { ComponenteFormulario, CustomButton },

  props: {
    visible: {
      type: Boolean,
      default: false
    },
    click: {
      type: Function,
      default: null
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
      <p class = "titulo">Formulário para Cadastro</p>
      <ComponenteFormulario inputText="Razão Social"/>
      <ComponenteFormulario inputText="CNPJ"/>
      <ComponenteFormulario inputText="Contato"/>
      <div class="button-container">
        <CustomButton texto="Enviar" class ="Button"/>
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
.button-container{
  display: flex;
  align-items: center;
  justify-content: flex-end;
  width:100%;
  height: 50%;
}
.Button{
  width: 20%;
  height: 48px;
  margin:20px;
  border-radius: 32px;
  font-size: 1.1rem;
}
.modal-content {
  
  height: 50%;
  background-color: white;
  padding: 20px;
  border-radius: 5px;
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
.titulo{
  margin-bottom: 30px;
  color:#707082;
}
</style>
