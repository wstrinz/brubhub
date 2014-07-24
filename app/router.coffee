`import Ember from 'ember'`

Router = Ember.Router.extend
  location: BrubhubENV.locationType

Router.map ->
  @resource 'menu_items', ->
    @route 'show', path: '/:menu_item_id'

`export default Router`
