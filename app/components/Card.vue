<template>
  <b-card no-body class="overflow-hidden shadow-lg">
    <b-row no-gutters>
      <b-col md="4" class="p-4">
        <b-card-img
          src="https://picsum.photos/400/400/?image=21"
          alt="Image"
        ></b-card-img>
      </b-col>
      <b-col md="8">
        <b-card-body title="Horizontal Card" class="d-flex flex-column h-100">
          <div class="mb-3">
            <b-card-text>
              This is a wider card with supporting text as a natural lead-in to
              additional content. This content is a little bit longer.
            </b-card-text>
            <div class="text-black-50">
              <b-icon icon="geo-alt" font-scale="1"></b-icon> 48 Pirrama Rd,
              Pyrmont NSW 2009, Australia
            </div>
          </div>

          <div no-gutters class="mb-3 mt-auto">
              <div class="my-2">Open : Son-fri 10:00am - 23:00pm</div>
              <b-icon
                icon="star-fill"
                font-scale="1.5"
                variant="warning"
              ></b-icon>
              4.8 <span class="text-black-50">(4589 rating)</span>
          </div>
        </b-card-body>
      </b-col>
    </b-row>
  </b-card>
</template>
