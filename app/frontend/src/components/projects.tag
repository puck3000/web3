<projects>
    <h2>Projects</h2>
    <h3>Select a Project:</h3>
    <ul>
        <project each={ allProjects() } ></project>
    </ul>
    <h3>Or create a new one:</h3>
    <projectForm projects="{ this.projects }"></projectForm>


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
