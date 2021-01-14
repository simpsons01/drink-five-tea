<template>
  <label class="radio">
    <input 
      type="radio"
      :checked="true"
      :disabled="false"
      :value="value"
    >
    <span class="radio-sign"></span>
    <span class="radio-text">104人力銀行_一零四資訊科技股份有限公司</span>
  </label>
</template>

<script>
import isEqual from "lodash/isEqual"

export default {
  name: "Radio",
  props: {
    text: {
      type: String,
      required: true
    },
    value: {
      type: [Object, Number, String, Boolean],
      required: true
    },
    bindValue: {
      type: [Object, Number, String, Boolean],
      required: true
    }
  },
  computed: {
    checked() {
      if(typeof this.value === "number" || typeof this.value === "string" || typeof this.value === "boolean") {
        return this.value === this.bindValue
      }else {

      }
    }
  }
}
</script>

<style lang="scss" scoped>
@import "~@/scss/variables.scss";

$radio-size: 24px;
$radio-margin: 8px;

.radio {
  cursor: pointer;
  position: relative;

  > * {
    vertical-align: middle;
  }

  input[type="radio"] {
    opacity: 0;
    outline: none;
    position: absolute;
    z-index: -1;
    left: 0;
    top: 0;
    width: 0;
    height: 0;
  }

  &-sign {
    display: inline-block;
    width: $radio-size;
    height: $radio-size;
    padding: 2px;
    position: relative;
    margin-right: $radio-margin;
    
    &::before {
      content: "";
      display: inline-block;
      box-sizing: border-box;
      width: 20px;
      height: 20px;
      border: 2px $black solid;
      border-radius: 100%;
      background-color: $white;
    }

    &::after {
      content: "";
      display: inline-block;
      box-sizing: content-box;
      width: 0px;
      height: 0px;
      border-radius: 100%;
      background-color: $primary;
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
    }
  }

  &-text {
    font-size: 16px;
    line-height: 22px;
    padding: 1px 0;
    color:  $black;
  }

  input[type="radio"]:checked ~ span {
    
    color: $primary;
     
    &::before {
      border-color: $primary;
    }

    &::after {
      width: 12px;
      height: 12px;
    }
  }
}
</style>