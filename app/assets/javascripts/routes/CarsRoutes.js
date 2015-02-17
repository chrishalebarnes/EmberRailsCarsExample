Cars.CarsIndexRoute = Ember.Route.extend({
  model: function() {
    return this.store.findAll('car');
  }
});

Cars.CarsShowRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('car', params.id);
  },
  actions: {
    save: function(car) {
    	var self = this;
    	car.save().then(function(response) {
    		//you can transition back to index
    		//self.transitionTo('cars.index');
    	}).catch(function() {
    		console.log('Failure!')
    	});
    }
  }
});