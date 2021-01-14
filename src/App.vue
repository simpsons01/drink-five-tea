<template>
  <div id="app">
    <img :src="env.VUE_APP_STATIC_PATH + 'img/logo.png'">
    <p>{{ gender }}</p>
    <Foo />
  </div>
</template>
3
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
      env,
      gender: ''
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
