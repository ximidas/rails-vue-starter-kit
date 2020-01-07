// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

import '../css/application.css';
import '../css/header.css';
import '../css/carousel.css';
import '@fortawesome/fontawesome';
import '@fortawesome/fontawesome-free-solid';

document.addEventListener("turbolinks:load", function() {
    FontAwesome.dom.i2svg();
});

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
const images = require.context('../images', true);
//const imagePath = (name) => images(name, true)

//VueJS
/*import Vue from 'vue';*/
import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks';
Vue.use(TurbolinksAdapter)
import App from '../app';
import axios from 'axios';
Vue.prototype.$http = axios;

import SecondComponent from "../components/VueComponent";

document.addEventListener('turbolinks:load', () => {
   new Vue({
     el: '#app',
     data: () => {
       return {
         message: 'Message from application.js file'
       }
     },
     components: { App, SecondComponent }
   })
 });