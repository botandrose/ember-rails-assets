require "ember/rails/assets/helper"
require "ember/rails/assets/middleware"
require "ember/rails/assets/version"

module Ember
  module Rails
    module Assets
      class Engine < ::Rails::Engine
        initializer "ember-rails-assets.helper" do |app|
          ApplicationController.helper Ember::Rails::Assets::Helper
        end

        initializer "ember-rails-assets.middleware" do |app|
          config.app_middleware.use Ember::Rails::Assets::Middleware
        end
      end
    end
  end
end

