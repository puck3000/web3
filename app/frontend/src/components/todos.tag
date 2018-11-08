<todos>
    <div class="container">
    <h2 class="subtitle">Todos in project "{ project || 'Project Title' }"</h2>
        <todoForm todos="{ this.todos }"></todoForm>
        <ul>
            <todo each="{ allTodos() }"> </todo>
        </ul>
    </div>

    <script>
      this.todos = new TodoCollection(this);
      // return all todos
      this.allTodos = function() {
         return this.todos.all();
      }

     this.on('mount', function() {
         console.log('fetching collection from todos');
         this.todos.fetch();
         this.update();
     })
    </script>
</todos>
