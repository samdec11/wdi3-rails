App.ContactsNewRoute = Ember.Route.extend
  model: -> App.Contact.createRecord()