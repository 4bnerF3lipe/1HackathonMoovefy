<script>
import { defineComponent } from 'vue'
import SubTitle from '../atoms/SubTitle.vue'
import PImage from '../PImage.vue'
const name = 'ImgSpace'

export default defineComponent({
  name,

  components: { SubTitle, PImage },

  props: {
    imgs: {
      type: Array,
      default: () => []
    },
    primeiroTitulo: {
      type: String,
      default: ''
    },
    segundoTitulo: {
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
  <div class="content">
    <div class="subheader-container">
      <SubTitle :text="primeiroTitulo" textColor="#5e454b" />
      <SubTitle :text="segundoTitulo" textColor="#5e454b" />
    </div>
    <ul class="img-container">
      <li v-for="(props, index) in imgs" :key="index">
        <PImage :src="props.src" :alt="props.alt" :customStyle="{ margin: '2rem' }" />
      </li>
    </ul>
  </div>
</template>

<style scoped>
.img-container {
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.img-container li {
  list-style: none;
}
.content {
  margin-top: 28px;
  margin-bottom: 28px;
}
.subheader-container {
  display: flex;
  width: 90%;
  justify-content: space-between;
}
.ver-mais {
  cursor: pointer;
}
</style>
