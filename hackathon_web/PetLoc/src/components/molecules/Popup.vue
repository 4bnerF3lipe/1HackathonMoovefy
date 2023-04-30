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
      <p>Conteúdo do popup aqui</p>
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
  width: 50%;
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
</style>
