import { createRouter, createWebHistory } from "vue-router";
import HomeView from "@/views/HomeView.vue";
import ProductsView from "@/views/ProductsView.vue";
import ProductView from "@/views/ProductView.vue";
import NewProductView from "@/views/NewProductView.vue";
import EditProductView from "@/views/EditProductView.vue";

const routes = [
  {
    path: "/",
    name: "/",
    component: HomeView,
  },
  {
    path: "/products",
    name: "products",
    component: ProductsView,
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
  {
    path: "/product/:id",
    name: "product",
    component: ProductView,
  },
  {
    path: "/edit-product/:id",
    name: "edit-product",
    component: EditProductView,
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
