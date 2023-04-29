<script>
import { defineComponent } from "vue";
import CustomSubHeader from "../components/atoms/CustomSubHeader.vue";
const name = 'HomeView'

export default defineComponent({
  name,

  components: {CustomSubHeader }, 

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
      <CustomSubHeader :title="'CustomSubHeader'" :color="'orange'"  />
    </div>
</template>


<style scoped>

</style>
