<template>
  <div id="app">
    <img :src="env.VUE_APP_STATIC_PATH + 'img/logo.png'">
    <p class="h1">pratice ci/cd and s3 deploy</p>
    <p>test</p>
    <div class="container" style="height: 200px; background: black"></div>
    <foo />
  </div>
</template>

<script>
import env from "@/utility/env"
import Foo from "@/component/Foo"

export default {
  name: 'App',
  components: {
    Foo
  },
  data() {
    return {
      env
    }  
  }
}
</script>


<style lang="scss">
@import "~@/scss/base.scss";
p {
  color: $primary
}
</style>
