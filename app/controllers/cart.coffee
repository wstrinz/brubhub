`import Ember from 'ember'`

CartController = Ember.Controller.extend
  actions:
    add: (item) ->
      cart = this.store.find('cart')
      cart.add(item)

`export default CartController`
