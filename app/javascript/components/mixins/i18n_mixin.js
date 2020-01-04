import I18n from '../../../../public/javascripts/i18n'
import '../../../../public/javascripts/translations'

//Add "import I18n from './i18n'" to translations.js in public/javascripts folder

I18n.defaultLocale = "en";

document.addEventListener('turbolinks:load', () => {
    I18n.locale = document.getElementsByTagName("body")[0].getAttribute("lang");
})


export default {
    methods: {
        t: (args) => I18n.t(args),

    },

}