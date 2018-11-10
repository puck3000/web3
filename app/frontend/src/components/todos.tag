<todos>
    <div class="container">
    <h2 class="subtitle">Todos in project "{ project || 'Project Title' }"</h2>
        <todoForm todos="{ this.todos }"></todoForm>
        <ul>
            <todo each="{ allTodos() }"></todo>
        </ul>
    </div>

    <script>
        let  tag = this;
        this.bus = opts.bus;

        this.todos = new Project(bus);
        // return all todos
        this.allTodos = function() {
            return this.todos.all();
        }

        this.on('mount', function() {
            this.todos.fetch();
        })

        this.bus.on('collectionUpdated', function() {
            tag.update();
        });

        

    </script>
</todos>
