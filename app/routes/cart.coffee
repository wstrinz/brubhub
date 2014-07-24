`import Ember from 'ember'`

CartRoute = Ember.Route.extend
  model: -> @store.find 'cart', 1

`export default CartRoute`
