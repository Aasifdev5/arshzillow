<template>
<h1 class="text-3xl mb-4">Your Notification</h1>
<section v-if="notifications.data.length" class="text-gray-700 dark:text-gray-400">
<div v-for="notification in notifications.data" :key="notification.id" class="border-b border-gray-200 dark:boder-gray-800 py-4 flex justify-between items-center">
<div>
    <span v-if="notification.type =='App\\Notifications\\OfferMade'">
    Offer <Price :price="notification.data.amount"></Price> for <Link :href="route('realtor.listing.show',{listing:notification.data.listing_id})" class="text-indigo-600 dark:text-indigo-300">listing</Link> was made!
</span></div>
<div>
<Link :href="route('notification.seen',{notification:notification.id})" v-if="!notification.read_at" class="btn-outline text-xs font-medium uppercase" as="button" method="put">mark as read</Link>
</div>
</div>
</section>
<EmptyState v-else>No Notifications yet</EmptyState>
<section v-if="notifications.data.length" class="w-full flex justify-center mt-8 mb-8">
<Pagination :links="notifications.links"></Pagination>
</section>
</template>
<script setup>
import { route } from 'ziggy-js';
import Price from "@/Components/Price.vue";
import { Link } from "@inertiajs/vue3";
import EmptyState from "@/Components/UI/EmptyState.vue";
import Pagination from "@/Components/UI/Pagination.vue";
defineProps({
    notifications:Object
})
</script>
