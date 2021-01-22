<template>
  <div id="app">
    <img :src="env.VUE_APP_STATIC_PATH + 'img/logo.png'" />
    <p>{{ gender }}</p>
    <p>test</p>
  </div>
</template>
3
<script>
import env from "@/utility/env"

export default {
  name: "App",
  components: {},
  data() {
    return {
      env,
      gender: "123"
    }
  }
}
</script>

<style lang="scss">
@import "~@/scss/base";
</style>
<style lang="scss" scoped>
@import "~@/scss/variables";

#app {
  p {
    color: $primary;
  }
}
</style>
