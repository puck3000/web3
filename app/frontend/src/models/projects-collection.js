class ProjectsCollection {

    constructor(tag) {
        this.collection = [{
                title: "project 0",
                nrOfTodos: 4,
                url: "#"
            },
            {
                title: "project 1",
                nrOfTodos: 12,
                url: "#"
            },
            {
                title: "project 2",
                nrOfTodos: 5,
                url: "#"
            },
            {
                title: "project 3",
                nrOfTodos: 3,
                url: "#"
            }
        ];
        if (tag) {
            this.riotjs_tag = tag;
        }
    }

    all() {
        return this.collection;
    }

    // save collection to localstorage
    save() {
        localStorage.setItem("projects", JSON.stringify(this.collection));
    }

    // adds a model to the collection and persists it to localstorage
    add(model) {
        this.collection.push(model);
        this.save();
        this.riotjs_tag.update();
    }

    // fetches locally stored projects or returns empty array, if no project ist stored
    fetch() {
        this.collection = JSON.parse(localStorage.getItem("projects")) || [];
    }



}