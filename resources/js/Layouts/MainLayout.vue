<template>
  <header
    class="w-full border-b border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800"
  >
    <div class="container mx-auto">
      <nav class="p-4 flex flex-wrap items-center justify-between">
        <div class="flex items-center text-lg font-medium">
          <Link href="/listing">Listings</Link>
        </div>
        <div
          class="flex items-center justify-center w-full sm:w-auto text-indigo-600 dark:text-indigo-300 font-bold text-center"
        >
          <Link href="/listing">Arsh Builder</Link>
        </div>
        <div class="flex items-center gap-4">
          <div v-if="user" class="flex flex-col sm:flex-row items-center">
            <Link class="relative inline-block pr-2 py-2" :href="route('notification.index')">
              <!-- Bell Icon -->
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="w-6 h-6 sm:w-7 sm:h-7 lg:w-8 lg:h-8 text-gray-500"
                viewBox="0 0 20 20"
                fill="currentColor"
              >
                <path
                  fill-rule="evenodd"
                  d="M10 2a6 6 0 00-6 6v4.586l-.707.707A1 1 0 004 16h12a1 1 0 00.707-1.707l-.707-.707V8a6 6 0 00-6-6zM8 18a2 2 0 104 0H8z"
                  clip-rule="evenodd"
                />
              </svg>

              <!-- Notification Badge (count) -->
              <span v-if="notificationCount"
                class="absolute top-0 right-0 inline-flex items-center justify-center px-1.5 py-0.5 sm:px-2 sm:py-1 lg:px-2.5 lg:py-1.5 text-[10px] sm:text-xs lg:text-sm font-bold leading-none text-white bg-red-600 rounded-full transform translate-x-1/2 -translate-y-1/2"
              >
                {{ notificationCount }}
              </span>
            </Link>

            <a
              :href="route('realtor.listing.index')"
              class="text-sm text-gray-500 mx-2"
              >{{ user.name }}</a
            >
            <Link href="realtor/listing/create" class="btn-primary my-2 sm:my-0"
              >+ New Listing</Link
            >
            <Link
              :href="route('logout')"
              method="DELETE"
              as="button"
              class="btn-primary mx-3 my-2 sm:my-0"
              >Logout</Link
            >
          </div>
          <div v-else class="flex flex-col sm:flex-row items-center gap-2">
            <Link :href="route('user-account.create')" class="my-2 sm:my-0"
              >Register</Link
            >
            <Link :href="route('login')" class="my-2 sm:my-0">Sign-In</Link>
          </div>
        </div>
      </nav>
    </div>
  </header>
  <main class="container mx-auto p-4 w-full">
    <div
      v-if="flashSuccess"
      class="mb-4 border rounded-md shadow-sm border-green-200 dark:border-green-800 bg-green-50 dark:bg-green-900 p-2"
    >
      {{ flashSuccess }}
    </div>
    <slot>Default</slot>
  </main>
</template>

  <script setup>
import { computed } from "vue";
import { Link, usePage } from "@inertiajs/vue3";
import { route } from "ziggy-js"; // Import route function from ziggy-js

const page = usePage();
const flashSuccess = computed(() => page.props.flash.success);
const user = computed(() => page.props.user);
const notificationCount = computed(() => Math.min(page.props.user.notificationCount,9));
const loginRoute = route("login"); // Ensure you have this route defined
console.log(route("login")); // Check if this outputs the expected URL
</script>
