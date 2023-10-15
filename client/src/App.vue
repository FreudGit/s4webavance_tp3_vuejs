<template>
  <nav className="navbar navbar-expand navbar-light bg-light">
    <div className="container">
      <router-link class="nav-brand" to="/"
        >Web Avancé - TP2 (React)</router-link
      >

      <ul className="navbar-nav flex-row">
        <li class="nav-item">
          <router-link class="nav-link" to="/">Bienvenue</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/produits">Produits</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/new-product"
            >New Product</router-link
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
      // showSideBar: false,
      inventory: [],
      // cart: {},
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
