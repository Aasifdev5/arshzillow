<template>
    <Box>
      <template #header>Offer Made</template>

      <!-- Show Price only if offer and amount exist -->
      <Price v-if="offer && offer.amount" :price="offer.amount" class="text-3xl"></Price>

      <section class="mt-2 flex flex-col md:flex-row justify-between text-gray-500">
        <div>Made on</div>
        <div class="font-medium">
          {{ offerMadeOn || 'No date available' }}
        </div>
      </section>


    </Box>
  </template>


  <script setup>
  import { computed } from "vue";
  import Box from "@/Components/UI/Box.vue";
  import Price from "@/Components/Price.vue";

  const props = defineProps({
    offer: {
      type: Object,
      required: true,
    },
  });

 // Log props to see the structure
console.log('Offer Props:', props.offer); // This should show the correct structure


  // Computed property to handle the date
  const offerMadeOn = computed(() => {
    if (props.offer && props.offer.created_at) {
      return new Date(props.offer.created_at).toDateString();
    }
    return null;
  });
  </script>
