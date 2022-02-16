<template>
  <div class="container min-vh-100 d-flex flex-column">
    <InputSearch class="my-5" @change="search" />
    <div v-if="restaurants.length" class="pb-5">
      <Card  v-for="item in restaurants" :key="item.id" :data='item' class="my-4"/>
    </div>
    <div v-else class="flex-grow-1 d-flex flex-column align-items-center justify-content-center">
      <h2>Not Found</h2>
    </div>
  </div>
</template>

<script>
export default {
  data: () => ({
    restaurants: []
  }),
  async fetch() {
    this.restaurants = await this.$axios.$get('restaurants')
  },
  methods: {
    async search(text) {
      this.restaurants = await this.$axios.$get('restaurants', {params: {
        search: text
      }})
    }
  },
}
</script>

<style scoped>
.text-not-found{
  text-align: center;
}
</style>