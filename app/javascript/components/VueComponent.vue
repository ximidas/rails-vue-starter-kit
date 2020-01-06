<template>
    <div class="bg-black text-custom font-bold rounded-lg border shadow-lg p-10">
        Translated string in VueJS: {{ t('language') }} <br>
        {{prop_from_rails_view}}
    </div>
</template>

<script>

    import i18n_mixin from "./mixins/i18n_mixin";

    export default {
        props: ['prop_from_rails_view'],
        mixins: [i18n_mixin],

    }


</script>

<style scoped>

</style>