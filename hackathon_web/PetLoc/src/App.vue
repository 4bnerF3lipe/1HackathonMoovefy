<script setup>
</script>

<template>
  <RouterView />
</template>

<style>
*{
  padding: 0;
  margin:0;
}
html,body{
  width:100%;
  height:100%;
}

/* Import nunito offline nunito-regular - latin */
/* https://google-webfonts-helper.herokuapp.com/fonts */
@font-face {
  font-family: 'Nunito';
  font-style: normal;
  font-weight: 400;
  src: url('./assets/fonts/nunito-v25-latin/nunito-v25-latin-regular.eot'); /* IE9 Compat Modes */
  src: local(''),
       url('./assets/fonts/nunito-v25-latin/nunito-v25-latin-regular.woff2') format('woff2'), /* Super Modern Browsers */
       url('./assets/fonts/nunito-v25-latin/nunito-v25-latin-regular.woff') format('woff'), /* Modern Browsers */
       url('./assets/fonts/nunito-v25-latin/nunito-v25-latin-regular.ttf') format('truetype'), /* Safari, Android, iOS */
       url('./assets/fonts/nunito-v25-latin/nunito-v25-latin-regular.svg#Nunito') format('svg'); /* Legacy iOS */
}
#app {  
  font-family: 'Nunito', sans-serif;
  /* font-family: Avenir, Helvetica, Arial, sans-serif; */
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  height: 100%;
}


</style>
