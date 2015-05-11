Ember.Handlebars.registerBoundHelper("asset-path", function(name) {
  var path = window.ASSETS.path(name);
  return new Ember.Handlebars.SafeString(path);
});
