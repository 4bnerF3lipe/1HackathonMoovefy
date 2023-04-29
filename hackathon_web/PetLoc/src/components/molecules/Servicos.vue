<script>
import { defineComponent } from 'vue'
import CustomSubHeader from '../atoms/CustomSubHeader.vue'
import Card from '../molecules/card.vue'
const name = 'Servicos'

export default defineComponent({
  name,

  components: { CustomSubHeader, Card },

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
  <div class="content">
    <CustomSubHeader title="Serviços" class="title" />
    <div class="service-container">
      <Card />
      <Card />
    </div>
    <div class="service-container">
      <Card />
      <Card />
    </div>
  </div>
</template>

<style scoped>
.content {
  background-color: #e6e6e6;
  padding: 28px;
}

.title {
  margin-left: 2rem;
}
.service-container {
  display: flex;
  gap: 3rem;
  padding-top: 30px;
  width: 100%;
  justify-content: center;
}
</style>
