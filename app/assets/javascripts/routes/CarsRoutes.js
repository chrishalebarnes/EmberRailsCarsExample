Cars.CarsIndexRoute = Ember.Route.extend({
  model: function() {
    return this.store.findAll('car');
  }
});