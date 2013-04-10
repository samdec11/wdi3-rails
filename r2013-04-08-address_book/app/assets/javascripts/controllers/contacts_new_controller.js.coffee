App.ContactsNewController = Ember.ObjectController.extend
  save: ->
    @get('store').commit()
    @transitionToRoute('contacts.index')