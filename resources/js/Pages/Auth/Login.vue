<template>
  <form @submit.prevent="login">
    <div class="w-1/2 mx-auto">
      <div>
        <label for="email" class="label">Email</label>
        <input type="text" class="input" v-model="form.email" id="email" />
        <div v-if="form.errors.email" class="input-error">
           {{ form.errors.email }}
        </div>
      </div>
      <div class="mt-4">
        <label for="password" class="label">Password</label>
        <input type="password" class="input" v-model="form.password" id="password" />
        <div v-if="form.errors.password" class="input-error">
           {{ form.errors.password }}
        </div>
      </div>
      <div class="mt-4">
        <button class="btn-primary" type="submit">Login</button>
        <div class="mt-2 text-center">
            <Link :href="route('user-account.create')" class="text-sm text-gray-500">Need an account? click here</Link>
        </div>
      </div>
    </div>
  </form>
</template>
<script setup>
import { useForm ,Link} from '@inertiajs/vue3';
import { route } from 'ziggy-js'; // Import route function from ziggy-js

const form = useForm({
    email: '',
    password: '',
})
const login = ()=>form.post(route('login.store'))
</script>
