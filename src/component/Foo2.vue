<template>
<div>
  <p>Foo2</p>
  <radio 
   :bindValue="'Foo2'"
   :value="'Foo2'"
  />
</div>
</template>

<script>
import Radio from './radio.vue'
export default {
  components: {
    Radio
  }
}
</script>

<style lang="scss" scoped>
@import "~@/scss/custom/mixin";

p {
  @include media-breakpoint-up(lg) {
    color: $primary
  }

  ul {
    background: cadetblue;
  }
}
</style>