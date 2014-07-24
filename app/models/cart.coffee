`import DS from 'ember-data'`

Cart = DS.Model.extend
  cartItems: DS.hasMany 'cart_item', {async: true}

  #FIXME: This menuItem.price dependancy not working
  subTotal: (->
    @get('cartItems').reduce (memo, item) ->
      #console.log memo, item.get('quantity'), item.get('menuItem.price'), item.get('menuItem')
      memo + item.get('quantity') * item.get('menuItem.price')
    , 0
    ).property 'cartItems.@each.menuItem.price', 'cartItems.@each.quantity'

Cart.reopenClass
  FIXTURES: [
    { id: 1, cartItems: [1] }
  ]
`export default Cart`
