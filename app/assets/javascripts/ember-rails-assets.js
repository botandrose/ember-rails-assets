Ember.Application.initializer({
  name: "ember-rails-assets-helpers",

  initialize: function(container, application) {
    if(typeof Ember.Helper !== "undefined") { // Ember >= 1.13
      application.register("helper:asset-path", Ember.Helper.helper(function(params, hash) {
        var name = params[0];
        var path = window.ASSETS.path(name);
        return new Ember.Handlebars.SafeString(path);
      }));
    } else { // Ember < 1.13
      Ember.Handlebars.registerBoundHelper("asset-path", function(name) {
        var path = window.ASSETS.path(name);
        return new Ember.Handlebars.SafeString(path);
      });
    }
  }
});
