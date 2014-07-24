`import DS from 'ember-data'`

MenuItem = DS.Model.extend
  title: DS.attr 'string'
  description: DS.attr 'string'
  price: DS.attr 'number'

MenuItem.reopenClass
  FIXTURES: [
    { id: 1, title: 'coffee', description: 'socially acceptable stimulants', price: 1.2 }
    { id: 2, title: 'embers', description: 'for starting fires', price: 10.1 }
  ]

`export default MenuItem`
