<template>
    <h1 class="text-3xl mb-4">Your Listing</h1>
    <section>
      <RealtorFilters :filters="filters"></RealtorFilters>
    </section>
    <section class="grid grid-cols-1 lg:grid-cols-2 gap-2">
      <Box v-for="listing in listings.data" :key="listing.id" :class="{'border-dashed': listing.deleted_at}">
        <div class="flex flex-col md:flex-row gap-2 md:items-center justify-between">
          <div :class="{'opacity-25': listing.deleted_at}">
            <div class="xl:flex items-center gap-2">
              <Price :price="listing.price" class="text-2xl font-medium"></Price>
              <ListingSpace :listing="listing"></ListingSpace>
            </div>
            <ListingAddress :listing="listing" class="text-gray-500"></ListingAddress>
          </div>
          <div class="flex items-center gap-1 text-gray-600 dark:text-gray-300">
            <a :href="`/listing/${listing.id}`" target="_blank" class="btn-outline text-xs font-medium">Preview</a>
            <a :href="`/realtor/listing/${listing.id}/edit`" target="_blank" class="btn-outline text-xs font-medium">Edit</a>
            <Link v-if="!listing.deleted_at" :href="`/realtor/listing/${listing.id}`" method="DELETE" class="btn-outline text-xs font-medium">Delete</Link>
            <Link v-else :href="route('realtor.listing.restore', { listing: listing.id })" method="PUT" class="btn-outline text-xs font-medium">Restore</Link>
          </div>
        </div>
      </Box>
    </section>
    <section v-if="listings.data.length" class="w-full justify-center mt-4 mb-4">
      <Pagination :links="listings.links"></Pagination>
    </section>
  </template>

  <script setup>
  import { Link } from "@inertiajs/vue3";
  import Box from "@/Components/UI/Box.vue";
  import Price from "@/Components/Price.vue";
  import ListingSpace from "@/Components/ListingSpace.vue";
  import ListingAddress from "@/Components/ListingAddress.vue";
  import RealtorFilters from "@/Pages/Realtor/Index/Components/RealtorFilters.vue";
  import Pagination from "@/Components/UI/Pagination.vue";
  import { route } from "ziggy-js";
  const props = defineProps({
    listings: Object,
    filters: Object,
  });
  </script>
