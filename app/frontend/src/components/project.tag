<project>
    <li>
        <a href="{ url }" onclick="{ setCurrentProject }">
            <h3>Project: { title }</h3>
            <span>{ nrOfTodos }</span>
        </a>
    </li>

<script>
    let tag = this;

    this.setCurrentProject = function(e) {
        e.preventDefault();
        tag.parent.projects.setCurrentProjectId(e.item.projectId);
    }
</script>
</project>