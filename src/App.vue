<template>
  <div id="app">
    <img :src="env.VUE_APP_STATIC_PATH + 'img/logo.png'">
    <p class="h1">pratice ci/cd and s3 deploy</p>
    <p>test</p>
    <div class="container-fluid">
      <div class="row">
        <div class="col-10">
          <p class="bg-primary">123</p>
        </div>
        <div class="col-2">
          <p class="bg-success">123</p>
        </div>
      </div>
    </div>
    <foo />
    <radio class="ml-1" style="margin-left: 20px" />
  </div>
</template>
3
<script>
import env from "@/utility/env"
import Foo from "@/component/Foo"
import radio from "@/component/radio"

export default {
  name: 'App',
  components: {
    Foo,
    radio
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
