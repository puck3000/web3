<projects>
<section class="container">
    <h2 class="subtitle">Projects</h2>
    <h3>Select an existing project:</h3>
    <ul>
        <project each={ allProjects() } ></project>
    </ul>
    <h3>Or create a new one:</h3>
    <projectForm projects="{ this.projects }"></projectForm>
</section>
    
<script>
    this.projects = new ProjectsCollection(this);
    // return all Projects:
    this.allProjects = function() {
        return this.projects.all();
    }
    this.on('mount', function() {
        console.log('fetching collection from projects');
        this.projects.fetch();
        this.update();
    })
</script>

</projects>
