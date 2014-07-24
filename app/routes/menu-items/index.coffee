`import Ember from 'ember'`

MenuItemsIndexRoute = Ember.Route.extend
  model: -> @store.find 'menu_item'

`export default MenuItemsIndexRoute`
