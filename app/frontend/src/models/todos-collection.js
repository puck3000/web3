class TodoCollection {

    constructor(tag) {
        // Local state
        this.collection = [];

        // Configuration
        this.localStorage_key = 'todos';

        if (tag) {
            this.riotjs_tag = tag;
        }

    }

    all() {
        return this.collection;
    }

    // Saving collection to localStorage
    save() {
        localStorage.setItem(this.localStorage_key, JSON.stringify(this.collection));
    }

    // Adds a model to the collection and persists it
    add(model) {
        this.collection.push(model);
        this.save();
        this.riotjs_tag.update();
    }

    // Fetch models from localStorage into collection
    fetch() {
        this.collection = JSON.parse(localStorage.getItem(this.localStorage_key)) || [];
    }
}