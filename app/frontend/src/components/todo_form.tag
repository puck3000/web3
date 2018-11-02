<todoForm>
    <form id="todoForm">
        Create new todo: <input type="text" ref="name">
        <button id="save_todo" onclick="{submit}">Save</button>
    </form>

    <script>
     console.log(opts);
     var todos = opts.todos;

     this.submit = function(e) {
         e.preventDefault();
         if (this.refs.name.value) {
             todos.add({ "name" : this.refs.name.value });
             this.refs.name.value = '';
         }
     }
    </script>
</todoForm>
