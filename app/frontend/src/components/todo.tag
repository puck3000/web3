<todo>
    <li>
        <span>
            <input type="checkbox" checked={ done } onclick="{ toggle }" />
            { name }
        </span>
        <button onclick="{ remove }">remove Todo</button>
    </li>


    <script>
        let tag = this;

        this.remove = function () {
            tag.parent.todos.removeTodo(tag);
        }

        this.toggle = function () {
            tag.parent.todos.toggleDoneStatus(tag);
        }
    </script>

</todo>