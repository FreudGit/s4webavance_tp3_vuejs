<template>
  <div class="product-add">
    <!-- Section-->
    <section class="py-5">
      <div class="container px-4 px-lg-5 mt-5">
        <div
          class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-2 justify-content-center"
        >
          <div class="col-sm-12">
            <h4 class="mb-3">Informations sur le produit</h4>
            <div v-show="message" class="alert alert-success">
              {{ message }}
            </div>
            <div class="needs-validation" novalidate>
              <div class="row g-2">
                <div class="col-12">
                  <label for="productName" class="form-label">Nom</label>
                  <div class="form-control border-0" readonly>
                    {{ product.nom }}
                  </div>
                </div>
                <div class="col-12">
                  <label for="productPhoto" class="form-label"
                    >Product Photo</label
                  >
                  <div class="form-control border-0" readonly>
                    {{ product.photo }}
                  </div>
                </div>
                <div class="col-12">
                  <label for="productPrice" class="form-label">Prix</label>
                  <div class="input-group has-validation">
                    <span class="input-group-text">CAD</span>
                    <div class="form-control border-0" readonly>
                      {{ product.prix }}
                    </div>
                  </div>
                </div>
                <div class="col-12">
                  <label for="productDescription" class="form-label"
                    >Description</label
                  >
                  <div class="form-control border-0" readonly>
                    {{ product.description }}
                  </div>
                </div>
                <div class="col-12">
                  <label for="productType" class="form-label">Catégorie</label>
                  <div class="form-control border-0" readonly>
                    {{ product.categorie }}
                  </div>
                </div>
                <button
                  class="w-100 btn btn-secondary btn-lg mt-3"
                  type="button"
                  @click="$router.push(`/products`)"
                >
                  Retour à Produits
                </button>
              </div>

              <hr class="my-4" />
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
import ProductDataService from "@/services/ProductDataService";

export default {
  props: ["removeInv", "inventory", "remove", "updateInv"],
  data() {
    return {
      message: null,
      submitted: false,
      product: {},
      id: parseInt(this.$route.params.id),
    };
  },
  mounted() {
    ProductDataService.get(this.id).then((response) => {
      this.product = response.data;
    });
  },
};
</script>
