<template>
      <div>
        <input type="checkbox" :checked="item.checked">
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
    }
  }
</script>