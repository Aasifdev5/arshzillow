<template>
  <Box class="md:col-span-5">
    <template #header>Offer #{{ offer.id }} <span v-if="offer.accepted_at" class="dark:bg-green-900 dark:text-green-200 bg-green-200 text-green-900 p-1 rounded-md uppercase ml-2">accepted</span></template>
    <section class="flex items-center justify-between">
      <div>
        <Price :price="offer.amount" class="text-xl"></Price>
        <div class="text-gray-500">
          Difference <Price :price="difference"></Price>
        </div>
        <div class="text-gray-500 text-sm">{{ offer.bidder.name }}</div>
        <div class="text-gray-500 text-sm">Made on {{ madeOn }}</div>
      </div>
      <div>
        <Link v-if="!isSold" :href="route('realtor.offer.accept',{offer:offer.id})" as="button" method="put" class="btn-outline text-xs font-medium">Accept</Link>
      </div>
    </section>
  </Box>
</template>
  <script setup>
import { Link } from "@inertiajs/vue3";
import { route } from "ziggy-js";
import Box from "@/Components/UI/Box.vue";
import Price from "@/Components/Price.vue";
import { computed } from "vue";

const props = defineProps({
  offer: Object,
  listingPrice: Number,
  isSold:Boolean,
});
const difference = computed(() => props.offer.amount - props.listingPrice);
const madeOn = computed(()=>new Date(props.offer.created_at).toDateString());

</script>
