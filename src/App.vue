<template>
  <div id="app">
    <img :src="env.VUE_APP_STATIC_PATH + 'img/logo.png'" />
    <p>{{ gender }}</p>
    <Foo />
    <Foo2 />
  </div>
</template>
3
<script>
import env from "@/utility/env"
import Foo from "@/component/Foo"
import Foo2 from "@/component/Foo2"

export default {
  name: "App",
  components: {
    Foo,
    Foo2
  },
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
