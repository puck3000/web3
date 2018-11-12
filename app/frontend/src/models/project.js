class Project {
  constructor(bus) {
    // Local state
    this.project = [];

    // Configuration
    this.localStorage_key = "todos";
    this.bus = bus;
  }

  all() {
    return this.project;
  }

  // Saving collection to localStorage
  save() {
    localStorage.setItem(this.localStorage_key, JSON.stringify(this.project));
  }

  // Adds a todo to the project and persists it
  add(model) {
    model.id = this.uuid();
    model.selectedProject = this.getSelectedProject();

    this.project.push(model);
    this.save();
    this.bus.trigger("collectionUpdated");
  }

  removeTodo(el) {
    console.log("removed todo: ", el.name);
    let index = this.project.indexOf(el);
    this.project.splice(index, 1);
    this.save();
    this.bus.trigger("collectionUpdated");
  }

  get(id) {
    return this.project.find(function (el) {
      return el.id == id;
    });
  }

  getSelectedProject(){
    
    return 'shit';
    
  }

  toggleDoneStatus(el) {
    let currentTodo = this.get(el.id);
    currentTodo.done = !el.done;
    this.save();
    this.bus.trigger("collectionUpdated");
  }

  // Fetch models from localStorage into collection
  fetch() {
    this.project =
      JSON.parse(localStorage.getItem(this.localStorage_key)) || [];
    this.bus.trigger("collectionUpdated");
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