Ember.Handlebars.registerHelper "asset-path", (name) ->
  path = window.ASSETS.path(name)
  new Ember.Handlebars.SafeString(path)

