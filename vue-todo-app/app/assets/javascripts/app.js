document.addEventListener("DOMContentLoaded", function(event) {
  var app = new Vue({
    el: '#app',
      data: {
        tasks: [
                {thing: "You need to do this, Now!", priority: 3, completed: false},
                {thing: "Then this", priority: 3, completed: false},
                {thing: "And finally this", priority: 3, completed: false}
                ],
        newTaskThing: "",
        newTaskPriority: "",
      },
      mounted: function() {},
      methods: {
        addTask: function() {
          let newTask = {
              thing: this.newTaskThing,
              priority: this.newTaskPriority,
              completed: false
            }
          if (this.newTaskThing && this.newTaskPriority) {
            this.tasks.push(newTask);
            this.newTaskThing = "";
            this.newTaskPriority = "";
          }
        },
        toggleCompleted: function (task) {
          task.completed = !task.completed;
        },
        numberOfIncompleteTasks: function() {
          var count = 0;
          for (let task of this.tasks) {
            if (!task.copmpleted) {
               count++;
            }
          }
          return count;
        }
      },
    computed: {}
  });
});