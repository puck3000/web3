<projects>
<section class="container">
    <h2 class="subtitle">Projects</h2>
    <h3>Select an existing project:</h3>
    <ul>
        <project each="{ allProjects() }"></project>
    </ul>
    <h3>Or create a new one:</h3>
    <projectForm projects="{ this.projects }"></projectForm>
    <todos class="section"></todos>
</section>
    
<script>
    let  tag = this;
    tag.bus = opts.bus;
    tag.projects = new Projects(bus);
    // return all Projects:
    this.allProjects = function() {
        return this.projects.all();
    }
    
    this.on('mount', function() {
            this.projects.fetch();
        })
    
    this.bus.on('collectionUpdated', function() {
            tag.update();
        });

</script>

</projects>
