App.Satellite = DS.Model.extend
  name: DS.attr 'string'
  image: DS.attr 'string'
  distance: DS.attr 'number'
  diameter: DS.attr 'number'
  period: DS.attr 'number'
  planet: DS.belongsTo 'App.Planet'