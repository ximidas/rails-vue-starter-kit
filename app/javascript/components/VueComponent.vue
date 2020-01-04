<template>
    <div class="bg-black text-custom font-bold rounded-lg border shadow-lg p-10">

        Translated string in VueJS: {{ t('language') }}

    </div>
</template>

<script>

    import i18n_mixin from "./mixins/i18n_mixin";

    export default {
        props: ['current_locale'],
        mixins: [i18n_mixin],

    }


</script>

<style scoped>

</style>