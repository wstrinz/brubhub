`import DS from 'ember-data'`

MenuItem = DS.Model.extend
  title: DS.attr 'string'
  description: DS.attr 'string'
  price: DS.attr 'number'

`export default MenuItem`
