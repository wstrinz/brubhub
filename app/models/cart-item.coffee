`import DS from 'ember-data'`
`import Ember from 'ember'`

CartItem = DS.Model.extend
  menuItem: DS.belongsTo 'menu_item', {async: true}
  quantity: DS.attr 'number'
  cart: DS.belongsTo 'cart', {async: true}
  itemPrice: Ember.computed.alias('menuItem.price')

CartItem.reopenClass
  FIXTURES: [
    { id: 1, menuItem: 1, quantity: 2, cart: 1 }
  ]

`export default CartItem`
