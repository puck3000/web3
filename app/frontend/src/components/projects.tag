<projects>
    <h2>Projects</h2>
    <h3>Select a Project:</h3>
    <ul>
        <project each={ allProjects() } >
            <a href="{ url }">
                { title }, 
                <span> { nrOfTodos } </span>
            </a>
        </project>
    </ul>
    <h3>Or create a new one:</h3>
    <input type="text">
    <button>add project</button>


<script>
    this.projects = new ProjectsCollection(this);
    // return all Projects:
    this.allProjects = function() {
        return this.projects.all();
    }
</script>

</projects>
