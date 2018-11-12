class Projects {

    constructor(bus) {
        // local state: 
        this.projects = [];
        this.selectedProjectId = 0;
        // configuration:
        this.localStorage_key = 'projects';
        this.bus = bus;
    }

    all() {
        return this.projects;
    }

    // save to localStorage
    save() {
        localStorage.setItem(this.localStorage_key, JSON.stringify(this.projects));
    }

    // adds a project to projects and persists it

    add(model) {
        model.projectId = this.uuid();
        model.todos = [];

        this.projects.push(model);
        this.save();
        this.bus.trigger("collectionUpdated");
    }


    // Fetch models from localStorage into collection
    fetch() {
        this.projects =
            JSON.parse(localStorage.getItem(this.localStorage_key)) || [];
        this.bus.trigger("collectionUpdated");
    }

    getCurrentProjectId() {
        return this.selectedProjectId;
    }

    setCurrentProjectId(id){
        this.selectedProjectId = id;
        this.save();
        this.bus.trigger("collectionUpdated");
        console.log("selected Project Id: ", this.selectedProjectId);
    }

    uuid() {
        var uuid = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, function (
            c
        ) {
            var r = (Math.random() * 16) | 0,
                v = c == "x" ? r : (r & 0x3) | 0x8;
            return v.toString(16);
        });
        return uuid;
    }

}