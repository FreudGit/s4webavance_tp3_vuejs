import { createRouter, createWebHistory } from "vue-router";
import HomeView from "@/views/HomeView.vue";
// import AboutView from "@/views/AboutView.vue";
import ProductView from "@/views/ProductView.vue";
import NewProductView from "@/views/NewProductView.vue";

const routes = [
  {
    path: "/",
    name: "/",
    component: HomeView,
  },
  {
    path: "/produits",
    name: "produits",
    component: ProductView,
  },
  {
    path: "/home",
    name: "home",
    component: HomeView,
  },
  {
    path: "/new-product",
    name: "new-product",
    component: NewProductView,
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
