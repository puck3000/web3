<todoForm>
    <div class="field has-addons">
        <div class="control">
            <input class="input" ref="name" type="text" placeholder="add a new todo">
        </div>
        <div class="control">
            <div class="select">
                <select ref="priority">
                    <option value="1">high priority</option>
                    <option value="2" selected>medium priority</option>
                    <option value="3">let's get high…</option>
                </select>
            </div>
        </div>

        <div class="control">
            <my-date date="01-01-2008"></my-date>
        </div>

        <div class="control">
            <a class="button is-info" onclick="{ submit }">
                add todo
            </a>
        </div>
    </div>

    <script>
        console.log(opts);
        var todos = opts.todos;
        
        
        this.submit = function (e) {
            e.preventDefault();
            if (this.refs.name.value) {
                todos.add({
                    "name": this.refs.name.value,
                    "priority": this.refs.priority.value,
                    "date": '01-01-2018',
                    "done": false,
                    
                });
                this.refs.name.value = '';
                this.refs.priority.value = 2;
            }
        };
    </script>
</todoForm>