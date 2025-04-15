<template>
      <div>
        {{ item.checked }}
        <input type="checkbox" :checked="item.checked"
          @change="toggleCheckbox"
        >
        <span class="ml-3">{{ item.text }}</span>
    </div>
</template>

<script>
  export default{
    props:{
      item:{
        type: Object,
        required: true,
      }
    },

    methods: {
      toggleCheckbox(e){
        this.$emit('toggle-checkbox', {
          id : this.item.id,
          checked: e.target.checked
        })
      }
    },
  }
</script>