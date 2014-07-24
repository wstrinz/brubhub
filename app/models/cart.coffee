`import DS from 'ember-data'`

Cart = DS.Model.extend
  cartItems: DS.hasMany 'cart_item'

Cart.reopenClass
  FIXTURES: [
    { id: 1 }
  ]
`export default Cart`
