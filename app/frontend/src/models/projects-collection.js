class ProjectsCollection {

    constructor(tag) {
        //local state:
        this.collection = [];
        //configuration:
        this.localStorage_key = 'projects';

        if (tag) {
            this.riotjs_tag = tag;
        }
        // Setup
        //this.fetch();
    }


    all() {
        return this.collection;
    }

    // save collection to localstorage
    save() {
        localStorage.setItem(this.localStorage_key, JSON.stringify(this.collection));
    }

    // adds a model to the collection and persists it to localstorage
    add(model) {
        this.collection.push(model);
        this.save();
        this.riotjs_tag.update();
    }

    // fetches locally stored projects or returns empty array, if no project ist stored
    fetch() {
        this.collection = JSON.parse(localStorage.getItem(this.localStorage_key)) || [];
    }




}