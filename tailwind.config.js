/** @type {import('tailwindcss').Config} */
export default {
    content: [
        "./storage/framework/views/*.php",
        "./resources/views/**/*.blade.php",
        "./resources/js/**/*.vue",
    ],
    theme: {
        extend: {},
    },
    darkMode: 'class', // or 'media' for using the user's system preference
    plugins: [
        require('@tailwindcss/forms'),
    ],
};
