config =
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'

Router.configure config

Router.route '/', !->
  #todo

Router.route '/signin', !->
  @render 'signin', {
    'data': ->
  }
  #todo

Router.route '/signup', !->
  #todo

require-login = !->
  if not Meteor.user! then @render 'signin'
  else @next!

get-level = !->
  @next!

# Router.on-before-action 'dataNotFound', all
Router.on-before-action require-login, except: ['signin', 'signup']

root = exports ? @
root.Router = Router
