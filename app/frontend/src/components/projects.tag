<projects>
<section class="container">
    <h2 class="subtitle">Projects</h2>
    <h3>Select an existing project:</h3>
    <ul>
        <project each="{ allProjects() }"></project>
    </ul>
    <h3>Or create a new one:</h3>
    <projectForm projects="{ this.projects }"></projectForm>
</section>
    
<script>
    let  tag = this;
    tag.bus = opts.bus;

    tag.projects = new Projects(bus);
    // return all Projects:
    this.allProjects = function() {
        return this.projects.all();
    }
    tag.on('mount', function() {
        tag.currentProject = tag.projects.fetch();
        if(tag.currentProject) {
            console.log("current project is " + tag.currentProject.name);
        }
        //this.update();
    })
    this.bus.on('collectionUpdated', function() {
            tag.update();
        });
</script>

</projects>
