App.ContactsController = Ember.ArrayController.extend
  delete: (contact) ->
    @removeObject(contact)
    contact.deleteRecord()
    @get('store').commit()
    @transitionToRoute('contacts.index')