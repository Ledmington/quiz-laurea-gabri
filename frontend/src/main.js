import { createApp } from 'vue'
import App from './App.vue'
import axios from 'axios';

import './assets/main.css'

createApp(App).mount('#app')

while (true) {
    axios.get("localhost:3000").then(response => console.log(response.data));
}