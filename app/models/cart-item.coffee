`import DS from 'ember-data'`

CartItem = DS.Model.extend
  menuItem: DS.belongsTo 'menu_item', {async: true}
  quantity: DS.attr 'number'
  cart: DS.belongsTo 'cart', {async: true}

CartItem.reopenClass
  FIXTURES: [
    { id: 1, menuItem: 1, quantity: 2, cart: 1 }
  ]

`export default CartItem`
