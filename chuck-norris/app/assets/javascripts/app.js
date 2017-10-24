document.addEventListener("DOMContentLoaded", function(event) {
  var app = new Vue({
    el: '#app',
    data: {
      facts: [],
      newFactString: "",
      errors: []
    },
    mounted: function() {
      $.get('/api/v2/facts.json', function(data) {
        this.facts = data;
      }.bind(this));
    },
    methods: {
      addFact: function() {
        var params = {fact: this.newFactString };
        $.post('/api/v2/facts.json', params, function(newFact) {
          this.facts.push(newFact);
          this.newFactString = "";
          this.errors = [];
        }.bind(this)).fail( function(response) {
          this.errors = response.responseJSON.errors;
        }.bind(this));
      },
      toggleFact: function(inputFact) {
        
      }  
    },
    computed: {

    }
  });
});