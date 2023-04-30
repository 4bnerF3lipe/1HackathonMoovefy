<script>
import { defineComponent } from 'vue'
import FourthContent from '../organisms/FourthContent.vue'
import PTitle from '../atoms/PTitle.vue'
const name = 'FourthSection'

export default defineComponent({
  name,

  components: { FourthContent, PTitle },

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
      <PTitle text="Patrocinadores" textColor="#5e454b" class="title" />
    </div>
    <FourthContent />
  </div>
  <div class="box-hr">
    <footer class="footer">
      <div class="sup-footer">
        <div>
          <h3>Mapa do Site</h3>
          <p><u>Encontre um pet</u></p>
          <p><u>Conheças nossas ONG's</u></p>
          <p><u>Serviços</u></p>
          <p><u>Patrocinadires</u></p>
        </div>
        <div>
          <h3>Iniciativas</h3>
          <p><u>Adota Pet</u></p>
          <p><u>Apadrinhamento de Pets</u></p>
          <p><u>Visite uma ONG</u></p>
        </div>
        <div>
          <h3>Empresas Parceiras</h3>
          <p><u>GoPet</u></p>
          <p><u>PaTUdos</u></p>
          <p><u>PetFit</u></p>
          <p><u>PetSiciety</u></p>
          <p><u>Dobaz</u></p>
        </div>
      </div>
      <div class="inf-footer">
        <p>© 2023 PetLoc. Todos os direitos reservados.</p>
      </div>
    </footer>
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

.footer {
  background-color: #4f7575;
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  min-height: 200px;
}

.sup-footer {
  width: 80%;
  display: flex;
  padding-top: 3rem;
  align-items: start;
  color: #fff;
  justify-content: space-around;
}
.sup-footer h3 {
  cursor: pointer;
}
.sup-footer p {
  cursor: pointer;
}

.inf-footer {
  padding: 2rem;
  color: #fff;
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
