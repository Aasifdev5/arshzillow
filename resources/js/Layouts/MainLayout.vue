<template>
    <header class="w-full border-b border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800">
      <div class="container mx-auto">
        <nav class="p-4 flex flex-wrap items-center justify-between">
          <div class="flex items-center text-lg font-medium">
            <Link href="/listing">Listings</Link>
          </div>
          <div class="flex items-center justify-center w-full sm:w-auto text-indigo-600 dark:text-indigo-300 font-bold text-center">
            <Link href="/listing">Larazillow</Link>
          </div>
          <div class="flex items-center gap-4">
            <div v-if="user" class="flex flex-col sm:flex-row items-center">
              <a :href="route('realtor.listing.index')" class="text-sm text-gray-500 mx-2">{{ user.name }}</a>
              <Link href="realtor/listing/create" class="btn-primary my-2 sm:my-0">+ New Listing</Link>
              <Link :href="route('logout')" method="DELETE" as="button" class="btn-primary mx-3 my-2 sm:my-0">Logout</Link>
            </div>
            <div v-else class="flex flex-col sm:flex-row items-center gap-2">
              <Link :href="route('user-account.create')" class="my-2 sm:my-0">Register</Link>
              <Link :href="route('login')" class="my-2 sm:my-0">Sign-In</Link>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <main class="container mx-auto p-4 w-full">
      <div v-if="flashSuccess" class="mb-4 border rounded-md shadow-sm border-green-200 dark:border-green-800 bg-green-50 dark:bg-green-900 p-2">
        {{ flashSuccess }}
      </div>
      <slot>Default</slot>
    </main>
  </template>

  <script setup>
  import { computed } from 'vue';
  import { Link, usePage } from '@inertiajs/vue3';
  import { route } from 'ziggy-js'; // Import route function from ziggy-js

  const page = usePage();
  const flashSuccess = computed(() => page.props.flash.success);
  const user = computed(() => page.props.user);

  const loginRoute = route('login'); // Ensure you have this route defined
  console.log(route('login')); // Check if this outputs the expected URL
  </script>
