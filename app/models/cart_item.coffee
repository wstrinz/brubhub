`import DS from 'ember-data'`

CartItem = DS.Model.extend
  menuItem: DS.hasMany 'menu_item'
  quanity: DS.attr 'number'
  cart: DS.belongsTo 'cart'

`export default CartItem`
