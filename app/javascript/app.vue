<template>



    <div class="bg-indigo-800 text-white font-bold rounded-lg border shadow-lg p-10">
        This is a variable from Vue: {{message}} <br>
        This is variable from Rails Api: {{pass_data_to_vue}} <br>
        This is variable from Rails view via props: {{prop_to_vue}}
    </div>

</template>

<script>

export default {
    props: ['prop_to_vue'],
    data: function () {
    return {
      pass_data_to_vue: null,
      message: "Hello Vue!"
    }
  },
    mounted() {
            this.$http.get('api/vue/data').then(response => {
            this.pass_data_to_vue = response.data.pass_data_to_vue;
        }); }

}
</script>

