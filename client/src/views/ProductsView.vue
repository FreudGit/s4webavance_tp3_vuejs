<template>
  <section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
      <div
        class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"
      >
        <div v-for="(product, i) in inventory" :key="i" class="col mb-5">
          <div class="card h-100">
            <!-- Product image-->
            <img
              class="card-img-top"
              :src="require(`@/assets/img/450/${product.photo}`)"
              :alt="product.nom"
            />
            <!-- Product details-->
            <div class="card-body p-4">
              <div class="text-center text-sm">
                <!-- Product name-->
                <h5 class="fw-bolder">{{ product.nom }}</h5>
                <!-- Product price-->
                ${{ product.prix }}
              </div>
              <p class="lead">{{ product.description }}</p>
              <div class="d-flex">
                <router-link
                  :to="{ name: 'product', params: { id: product.id } }"
                  >See more...</router-link
                >
              </div>
            </div>
            <!-- Product actions-->
            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
              <div class="d-flex justify-content-around">
                <button
                  class="btn btn-outline-dark flex-shrink-0 btn-sm"
                  type="button"
                  @click="$router.push(`/edit-product/${product.id}`)"
                >
                  Éditer
                </button>
                <button
                  class="btn btn-outdline-dark flex-shrink-0 btn-sm btn-danger"
                  type="button"
                  @click="deleteItem(product.nom, product.id, i)"
                >
                  Delete
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  props: ["inventory", "addTo", "deleteItem"],
};
</script>
