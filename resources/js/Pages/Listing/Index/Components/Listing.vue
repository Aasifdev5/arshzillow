<template>
    <Box>
      <div>
        <Link :href="`/listing/${listing.id}`">
            <div class="flex items-center gap-1">
                <Price :price="listing.price" class="text-2xl font-bold"></Price>
                <div class="text-xs text-gray-500">
                    <Price :price="monthlyPayment"></Price>pm
                </div>
            </div>

          <ListingSpace :listing="listing" class="text-lg"></ListingSpace>
          <ListingAddress :listing="listing" class="text-gray-500" />
        </Link>
      </div>

    </Box>
</template>
<script setup>
import { Link } from "@inertiajs/vue3";
import ListingAddress from "@/Components/ListingAddress.vue";
import Box from "@/Components/UI/Box.vue";
import ListingSpace from "@/Components/ListingSpace.vue";
import Price from "@/Components/Price.vue";
import { useMonthlyPayment } from "@/Composables/useMonthlyPayment";
const props = defineProps({
    listing: Object,
})
const { monthlyPayment } = useMonthlyPayment(
  props.listing.price,
  2.5,
  25,
);
</script>
