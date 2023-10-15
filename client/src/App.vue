<template>
  <nav className="navbar navbar-expand navbar-light bg-light">
    <div className="container">
      <div class="nav-brand">Web Avancé - TP3 (Vue.JS)</div>

      <ul className="navbar-nav flex-row">
        <li class="nav-item">
          <router-link class="nav-link" to="/">Bienvenue</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/products">Produits</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/new-product"
            >Ajouter produit</router-link
          >
        </li>
      </ul>
    </div>
  </nav>
  <router-view
    :inventory="inventory"
    :addTo="addToCart"
    :addInv="addInventory"
    :removeInv="removeInventory"
    :remove="removeItem"
    :updateInv="updateInventory"
    :deleteItem="deleteProduct"
  />
</template>

<script>
import ProductDataService from "@/services/ProductDataService";

export default {
  components: {
    // Sidebar,
  },
  data() {
    return {
      showSideBar: false,
      inventory: [],
      cart: {},
    };
  },
  methods: {
    toggleSidebar() {
      this.showSideBar = !this.showSideBar;
    },
    addToCart(product, index) {
      if (!this.cart[product]) this.cart[product] = 0;
      this.cart[product] += this.inventory[index].quantity;
      console.log(this.cart);
    },
    removeItem(name) {
      delete this.cart[name];
    },
    addInventory(data) {
      this.inventory.push(data);
    },
    removeInventory(index) {
      this.inventory.splice(index, 1);
    },
    updateInventory(index, data) {
      this.inventory[index].nom = data.nom;
      this.inventory[index].photo = data.photo;
      this.inventory[index].prix = data.prix;
      this.inventory[index].description = data.description;
      this.inventory[index].categorie = data.categorie;
    },
    deleteProduct(name, id, index) {
      ProductDataService.delete(id).then((response) => {
        console.log("remove", id, index, response);
        this.removeItem(name);
        this.removeInventory(index);
        this.$router.push({ name: "products" });
      });
    },
  },
  computed: {
    totalQuantity() {
      return Object.values(this.cart).reduce((acc, curr) => {
        return acc + curr;
      }, 0);
    },
  },
  mounted() {
    ProductDataService.getAll()
      .then((response) => {
        this.inventory = response.data;
      })
      .catch((e) => {
        console.log(e);
      });
  },
};
</script>
