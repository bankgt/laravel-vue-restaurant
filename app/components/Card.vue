<template>
  <b-card no-body class="overflow-hidden shadow-lg">
    <b-row no-gutters>
      <b-col md="4" class="p-4">
        <div class="image" :style="{ backgroundImage: 'url(/images/' + data.id + '.jpeg)' }" />
      </b-col>
      <b-col md="8">
        <b-card-body :title="data.name" class="d-flex flex-column h-100">
          <div class="mb-3">
            <b-card-text>
              {{ data.description }}
            </b-card-text>
            <div class="text-black-50">
              <b-icon icon="geo-alt" font-scale="1"></b-icon> {{ data.address }}
            </div>
          </div>

          <div no-gutters class="mb-3 mt-auto">
            <div class="my-2">Open : {{ data.open }}</div>
            <b-icon
              icon="star-fill"
              font-scale="1.5"
              variant="warning"
            ></b-icon>
            {{ data.rating | ratingStar }}
            <span class="text-black-50">({{ data.rating }} rating)</span>
          </div>
        </b-card-body>
      </b-col>
    </b-row>
  </b-card>
</template>

<script>
export default {
  filters: {
    ratingStar(value) {
      return Math.round(((value * 5) / 10000) * 2) / 2
    },
  },
  props: {
    data: {
      type: Object,
      required: true,
    },
  },
}
</script>

<style scoped lang="scss">
.image {
  position: relative;
  display: block;
  width: 100%;
  padding: 0;
  overflow: hidden;
  background-size: cover;
  border-radius: 30px;
  &::before {
    padding-top: 100%;
    display: block;
    content: '';
  }
}
</style>
