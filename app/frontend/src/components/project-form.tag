<projectForm>
    <form id="projectForm">
        Create new project: <input type="text" ref="title">
        <button id="save_project" onclick="{submit}">Save</button>
    </form>

    <script>
     console.log(opts);
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