`import Ember from 'ember'`

CartController = Ember.Controller.extend
  actions:
    add: (item) ->
      cart = this.store.find('cart', 1)
      #debugger
      #Ember.RSVP.resolve(cart.get('id')).then(-> console.log arguments)
      #console.log(@get 'model')
      #console.log(cart.get('cartItems'))
      new_item = @store.createRecord('cart_item', {quantity: 1, menuItem: item})
      cart.then(
        (c) -> c.get('cartItems').then(
          (i) -> i.addObject(new_item)))
      #cart.then((c)-> console.log(c); c.get('cartItems').addObject(item))


`export default CartController`
