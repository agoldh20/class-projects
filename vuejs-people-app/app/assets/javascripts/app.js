document.addEventListener("DOMContentLoaded", function(event) {
  var app = new Vue({
    el: '#app',
    data: {
      people: [
                { name: "Person A",
                  bio: "I'd want to be like Victor's Person 1, but I'm a string, not an integer and I kept gettin a nomethoderror to implicit string into integer",
                  bioVisible: false },
                { name: "Chuck Norris",
                  bio: "If you want to know about me, check out Adam Goldwater's AMAZING api about me.",
                  bioVisible: false },
                { name: "Jack Bauer",
                  bio: "I'm actually better than Chuck Norris",
                  bioVisible: false }
                  ],
                newPersonName: "",
                newPersonBio: ""
    },
    mounted: function() {
    },
    methods: {
      toggleBio: function(person) {
        person.bioVisible = !person.bioVisible;
      },
      addPerson: function() {
        var newPerson = {
                          name: this.newPersonName,
                          bio: this.newPersonBio,
                          bioVisible: false
                        };
        if (this.newPersonName && this.newPersonBio) {
          this.people.push(this.newPerson);
          this.newPerson.name = "";
          this.newPerson.bio = "";
        }
      }
    },

    computed: {

    }
  });
});