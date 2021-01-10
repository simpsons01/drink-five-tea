<template>
  <div id="app">
    <img :src="env.VUE_APP_STATIC_PATH + 'logo.png'">
    <p>pratice ci/cd and s3 deploy</p>
    <p>test</p>
  </div>
</template>

<script>
import env from "@/utility/env"

export default {
  name: 'App',
  data() {
    return {
      env
    }  
  }
}
</script>


<style>
body, html {
  height: 100%;
  min-height: 100%;
}

#app > p {
  color: red
}
</style>
