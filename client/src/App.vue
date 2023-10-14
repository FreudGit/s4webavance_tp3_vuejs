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
// import HelloWorld from "./components/HelloWorld.vue";

// export default {
//   name: "App",
//   components: {
//     HelloWorld,
//   },
// };
</script>
