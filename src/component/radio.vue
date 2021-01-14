<template>
  <label class="radio">
    <input type="radio">
    <span class="radio-sign"></span>
    <span class="radio-text">104人力銀行_一零四資訊科技股份有限公司</span>
  </label>
</template>

<script>
export default {
  name: "Radio",
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
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    margin: 0;
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