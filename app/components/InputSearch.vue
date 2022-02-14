<!-- Please remove this file from your project -->
<template>
  <b-input-group class="mb-2 input-group shadow-lg">
    <b-form-input v-model="text" type="search" placeholder="Search" />
    <b-input-group-append class="icon d-flex align-items-center justify-content-center">
      <b-icon icon="search" font-scale="1.5" class="text-muted"></b-icon>
    </b-input-group-append>
  </b-input-group>
</template>

<script>
export default {
  data() {
    return {
      text: '',
    }
  },
}
</script>

<style scoped>
.input-group{
  border-radius: 30px;
}
.icon{
  width: 80px;
}
</style>