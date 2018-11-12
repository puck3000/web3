<projectForm>
    <div class="field has-addons">
        <div class="control">
            <input class="input" ref="title" type="text" placeholder="add a new project">
        </div>
        <div class="control">
            <a class="button is-info" onclick="{ submit }">
            add project
            </a>
        </div>
    </div>

   
    <script>
     var projects = opts.projects;

     this.submit = function(e) {
         e.preventDefault();
         if (this.refs.title.value) {
             projects.add({ "title" : this.refs.title.value });
             this.refs.title.value = '';
         }
     }
    </script>
</projectForm>