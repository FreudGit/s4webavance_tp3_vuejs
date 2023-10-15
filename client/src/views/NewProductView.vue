<template>
  <div class="product-add">
    <!-- Section-->
    <section class="py-5">
      <div class="container px-4 px-lg-5 mt-5">
        <div
          class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-2 justify-content-center"
        >
          <div class="col-sm-12">
            <h4 class="mb-3">Ajouter un nouveau produit</h4>
            <div v-show="message" class="alert alert-danger">{{ message }}</div>
            <div class="needs-validation" novalidate>
              <div class="row g-2">
                <div v-if="!submitted">
                  <div class="col-12">
                    <label for="productName" class="form-label">Nom</label>
                    <input
                      type="text"
                      class="form-control"
                      id="productNom"
                      v-model="product.nom"
                      placeholder=""
                      required
                    />
                    <div class="invalid-feedback">
                      Un nom valide est requis.
                    </div>
                  </div>
                  <div class="col-12">
                    <label for="productPhoto" class="form-label">Photo</label>
                    <input
                      type="text"
                      class="form-control"
                      id="productPhoto"
                      v-model="product.photo"
                      placeholder=""
                      required
                    />
                    <div class="invalid-feedback">
                      Un chemin photo valide est requis.
                    </div>
                  </div>
                  <div class="col-12">
                    <label for="productPrice" class="form-label">Prix</label>
                    <div class="input-group has-validation">
                      <span class="input-group-text">CAD</span>
                      <input
                        type="text"
                        class="form-control"
                        id="productPrice"
                        v-model.number="product.prix"
                        placeholder=""
                        required
                      />
                      <div class="invalid-feedback">Un Prix est requis.</div>
                    </div>
                  </div>
                  <div class="col-12">
                    <label for="productDescription" class="form-label"
                      >Description</label
                    >
                    <textarea
                      class="form-control"
                      id="productDescription"
                      v-model="product.description"
                      placeholder=""
                    ></textarea>
                    <div class="invalid-feedback">
                      Description valide requise
                    </div>
                  </div>
                  <div class="col-12">
                    <label for="productType" class="form-label"
                      >Catégorie</label
                    >
                    <select
                      class="form-control"
                      id="productCategorie"
                      v-model="product.categorie"
                      placeholder=""
                      required
                    >
                      <option value="">Selectionner</option>
                      <option value="Burger">Burger</option>
                      <option value="Italian">Italian</option>
                      <option value="Indian">Indian</option>
                      <option value="Thai">Thai</option>
                    </select>
                    <div class="invalid-feedback">
                      Un chemin photo valide est requis.
                    </div>
                  </div>
                  <button
                    class="w-100 btn btn-secondary btn-lg mt-3"
                    type="button"
                    @click="saveProduct"
                  >
                    Sauvegarder
                  </button>
                </div>
                <div v-else>
                  <div
                    class="alert alert-success alert-dismissible fade show"
                    role="alert"
                  >
                    <strong>Soumis avec succès!</strong>
                    <button
                      type="button"
                      class="btn-close"
                      data-bs-dismiss="alert"
                      aria-label="Close"
                    ></button>
                  </div>
                  <button
                    class="w-100 btn btn-success btn-lg mt-3"
                    type="button"
                    @click="newProduct"
                  >
                    Ajouter un nouveau produit
                  </button>
                </div>
                <hr class="my-4" />
              </div>
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
  props: ["addInv"],
  data() {
    return {
      message: null,
      submitted: false,
      product: {
        nom: null,
        photo: null,
        prix: null,
        description: null,
        categorie: null,
      },
    };
  },
  methods: {
    saveProduct() {
      ProductDataService.create(this.product)
        .then((response) => {
          this.product.id = response.data.id;
          this.addInv(this.product);
          this.submitted = true;
          this.message = null;
        })
        .catch((error) => {
          this.message = error.response.data.message;
        });
    },
    newProduct() {
      this.submitted = false;
      this.product = {};
    },
  },
};
</script>
