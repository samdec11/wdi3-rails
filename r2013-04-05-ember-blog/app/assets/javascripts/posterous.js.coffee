window.App = Ember.Application.create
  LOG_TRANSITIONS: true

App.Router.map ->
  #route for generic pages, resource for nouns
  #coffeescript allows '@' to replace 'this.'
  @route 'about'
  @route 'faq'
  @resource 'posts', ->
    @route 'show', {path: ':post_id'}
    @route 'new'

App.Store = DS.Store.extend
  revision: 12