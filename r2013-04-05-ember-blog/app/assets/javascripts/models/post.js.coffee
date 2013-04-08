App.Post = DS.Model.extend
  title: DS.attr 'string'  # Types can only be string, number, date, or boolean
  author: DS.attr 'string'
  body: DS.attr 'string'
  posted: DS.attr 'date'
