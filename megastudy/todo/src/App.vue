<template>
  <div id="app" class="container">
    <h1 class="text-center">Todo App</h1>
    <input 
      v-model="todoText"
      type="text" 
      class="w-100 p-2" 
      placeholder="Type todo"
      @keyup.enter="addTodo"
      />
    <hr/>

    <TodoList 
      v-for="item in todoLists" 
      :key="item.id"
      :item="item"
      />

  </div>
</template>

<script>
import TodoList from '@/components/TodoList.vue';
export default {
  components : {
    TodoList
  },
  data(){
    return{
      todoText:'',
      todoLists:[
        { id:1 , text:'buy a car', checked:false },
        { id:2 , text:'play game', checked:false },
        { id:3 , text:'buy a carrot', checked:false },
      ]
    }
  },

  methods: {
    addTodo(e){
      this.todoLists.push({
        id: Math.random(),
        text: e.target.value,
        checked : false,
      });
      this.todoText = '';
    }
  },
}
</script>

<style>

</style>
