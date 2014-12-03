# Ember::Rails::Assets

`asset-path` helper for ember-rails, including digests in production!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ember-rails-assets'
```

## Usage

Ember: Require `ember-rails-assets` anywhere, then use the `asset-path` helper in your template:

```javascript
// app/assets/javascripts/application.js
//= require ember-rails-assets

// app/assets/javascripts/templates/application.hbs
<img src="{{asset-path "dogs/chihuahua"}}" />
```

## Contributing

1. Fork it ( https://github.com/botandrose/ember-rails-assets/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
