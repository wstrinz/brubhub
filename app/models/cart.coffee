`import DS from 'ember-data'`

Cart = DS.Model.extend
  cartItems: DS.hasMany 'cart_item', {async: true}

  subTotal: (->
    @get('cartItems').reduce (memo, item) ->
      memo + item.get('quantity') * item.get('itemPrice')
    , 0
    ).property 'cartItems.@each.itemPrice', 'cartItems.@each.quantity'

Cart.reopenClass
  FIXTURES: [
    { id: 1, cartItems: [1] }
  ]
`export default Cart`
