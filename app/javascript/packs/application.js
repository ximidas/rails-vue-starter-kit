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
import Vue from 'vue';
import App from '../app';
import axios from 'axios';

Vue.prototype.$http = axios;


document.addEventListener('turbolinks:load', () => {
    const el = document.getElementById("app");
    const props = JSON.parse(el.getAttribute('data'));

    if (el != null && props != null) {
        const app = new Vue({
            el,
            render: h => h(App, { props }),

        });

        console.log(app);
    }


});

import VueComponent from "../components/VueComponent";

document.addEventListener('turbolinks:load', () => {
    const el = document.getElementById("vuecomponent");
    const props = JSON.parse(el.getAttribute('data'));
    if (el != null && props != null) {
        const vuecomponent = new Vue({
            el,
            render: h => h(VueComponent, { props }),
        })

        console.log(vuecomponent)
    }
});
