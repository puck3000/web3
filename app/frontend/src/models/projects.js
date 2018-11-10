class Projects {

    constructor(bus) {
        // local state: 
        this.projects = [];
        // configuration:
        this.localStorage_key = 'projects';
        if (tag) {
            this.riotjs_tag = tag;
        }
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
        add(model) {
            model.id = this.uuid();

            this.projects.push(model);
            this.save();
            this.bus.trigger("collectionUpdated");
        }
    }

    // Fetch models from localStorage into collection
    fetch() {
        this.project =
            JSON.parse(localStorage.getItem(this.localStorage_key)) || [];
        this.bus.trigger("collectionUpdated");
    }

    get(id) {
        return this.project.find(function (el) {
            return el.id == id;
        });
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