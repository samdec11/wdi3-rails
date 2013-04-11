App.SatellitesNewController = Ember.ObjectController.extend
  needs: ['planetsShow']
  save: ->
    satellite = @get('content')
    @get('controllers').get('planetsShow').get('satellites').pushObject(satellite)
    @get('controllers').get('planetsShow').set('isNew', false)
    @get('store').commit()
    @transitionToRoute('planets.index')
  cancel: ->
    @get('controllers').get('planetsShow').set('isNew', false)
    @transitionToRoute('planets.index')
