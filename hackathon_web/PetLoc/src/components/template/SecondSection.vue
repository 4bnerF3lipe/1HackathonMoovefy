<script>
import { defineComponent } from 'vue'
import SecondContent from '../organisms/SecondContent.vue'
import PTitle from '../atoms/PTitle.vue'
const name = 'SecondSection'

export default defineComponent({
  name,

  components: { SecondContent, PTitle },

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
    <div class="box-title">
      <PTitle text="Conheça nossas ONG's " textColor="#5e454b" class="title" />
    </div>
    <SecondContent />
  </div>
  <div class="box-hr">
    <hr />
  </div>
</template>

<style scoped>
.content {
  width: 100%;
  box-sizing: border-box;
  padding-top: 3rem;
  padding-bottom: 3rem;
  padding-left: 1rem;
  padding-right: 1rem;
}
.box-title {
  padding: 28px;
  display: flex;
}
.title {
  text-align: center;
  font-size: 1.7rem;
  font-weight: 900;
}

.box-hr {
  width: 100%;
  display: flex;
  justify-content: center;
}

.box-hr hr {
  width: 15%;
  height: 2px;
  background-color: #707070;
}

@media (max-width: 1024px) {
  .content {
    width: 100%;
    box-sizing: border-box;
    padding: 3rem;
  }
  .box-title {
    padding: 28px;
    display: flex;
  }
  .title {
    text-align: center;
    font-size: 1.7rem;
    font-weight: 900;
  }

  .box-hr {
    width: 100%;
    display: flex;
    justify-content: center;
  }

  .box-hr hr {
    width: 15%;
    height: 2px;
    background-color: #707070;
  }
}
</style>
