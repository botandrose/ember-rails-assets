Ember.Application.initializer({
  name: "ember-rails-assets-helpers",

  initialize: function(container, application) {
    application.register("helper:asset-path", Ember.Helper.helper(function(params, hash) {
      var name = params[0];
      var path = window.ASSETS.path(name);
      return new Ember.Handlebars.SafeString(path);
    }));
  }
});
