import { Routes } from '@angular/router';
import {MainLayoutComponent} from "./layouts/main-layout/main-layout.component";
import {HomeComponent} from "./pages/home/home.component";
import {ProductsComponent} from "./pages/products/products.component";

export const routes: Routes = [
  {
    path: '',
    component: MainLayoutComponent,  // Apply MainLayout to public-facing routes
    children: [
      { path: '', component: HomeComponent },
      { path: 'products', component: ProductsComponent },
      // Add more public routes here
    ]
  }];
