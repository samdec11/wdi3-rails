App.Contact = DS.Model.extend
  first: DS.attr 'string'
  last: DS.attr 'string'
  dob: DS.attr 'string'
  phone: DS.attr 'string'
  email: DS.attr 'string'